param (
    [bool]$on_server = $true
)

# Définir les chemins en fonction du paramètre on_server
if ($on_server) {
    $dataroot = "F:\Imagerie\BD\Donnees pour GAN\xray2drr"
    $checkpoints_dir = "C:\Users\eiffe_otmxilj\OneDrive\Documents\xxxxxxxx"
} else {
    $dataroot = "C:\Users\M47h1\Documents\EiffelMedtech\pytorch_cyclegan\datasets\xray2drr"
    $checkpoints_dir = "C:\Users\M47h1\Documents\EiffelMedtech\pytorch_cyclegan\pretrained_models\xray2drr"
}



python train.py --dataroot $dataroot `
                --name xray2drr `
                --model cycle_gan `
                --batch_size 1 `
                --gpu_ids 0 `
                --checkpoints_dir $checkpoints_dir `
                --load_size 256 `
                --netG resnet_9blocks `
                --input_nc 1 `
                --output_nc 1 `
                --preprocess none `
                --lambda_A 10 `
                --lambda_B 3 `
                --lambda_identity 2 `
                --lambda_shape 15

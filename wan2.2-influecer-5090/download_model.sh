#!/usr/bin/env bash
set -euo pipefail

# Ensure directories exist
mkdir -p "/ComfyUI/models/loras" "/ComfyUI/models/unet"

############################################
# Wan 2.2 Lightning I2V LoRA — HIGH (fp16)
############################################
if [ ! -f "/ComfyUI/models/loras/Wan2.2-Lightning_I2V-A14B-4steps-lora_HIGH_fp16.safetensors" ]; then
  wget --content-disposition -O "/ComfyUI/models/loras/Wan2.2-Lightning_I2V-A14B-4steps-lora_HIGH_fp16.safetensors" \
    "https://huggingface.co/Kijai/WanVideo_comfy/resolve/main/Wan22-Lightning/Wan2.2-Lightning_I2V-A14B-4steps-lora_HIGH_fp16.safetensors"
  echo "✅ Model downloaded: Wan2.2-Lightning_I2V-A14B-4steps-lora_HIGH_fp16.safetensors"
else
  echo "✅ Wan2.2-Lightning_I2V-A14B-4steps-lora_HIGH_fp16.safetensors already exists, skipping download."
fi

###########################################
# Wan 2.2 Lightning I2V LoRA — LOW (fp16)
###########################################
if [ ! -f "/ComfyUI/models/loras/Wan2.2-Lightning_I2V-A14B-4steps-lora_LOW_fp16.safetensors" ]; then
  wget --content-disposition -O "/ComfyUI/models/loras/Wan2.2-Lightning_I2V-A14B-4steps-lora_LOW_fp16.safetensors" \
    "https://huggingface.co/Kijai/WanVideo_comfy/resolve/main/Wan22-Lightning/Wan2.2-Lightning_I2V-A14B-4steps-lora_LOW_fp16.safetensors"
  echo "✅ Model downloaded: Wan2.2-Lightning_I2V-A14B-4steps-lora_LOW_fp16.safetensors"
else
  echo "✅ Wan2.2-Lightning_I2V-A14B-4steps-lora_LOW_fp16.safetensors already exists, skipping download."
fi

#########################################################
# Wan 2.2 I2V A14B — HIGH noise (fp8 e4m3fn scaled, KJ)
#########################################################
if [ ! -f "/ComfyUI/models/unet/Wan2_2-I2V-A14B-HIGH_fp8_e4m3fn_scaled_KJ.safetensors" ]; then
  wget --content-disposition -O "/ComfyUI/models/unet/Wan2_2-I2V-A14B-HIGH_fp8_e4m3fn_scaled_KJ.safetensors" \
    "https://huggingface.co/Kijai/WanVideo_comfy_fp8_scaled/resolve/main/I2V/Wan2_2-I2V-A14B-HIGH_fp8_e4m3fn_scaled_KJ.safetensors"
  echo "✅ Model downloaded: Wan2_2-I2V-A14B-HIGH_fp8_e4m3fn_scaled_KJ.safetensors"
else
  echo "✅ Wan2_2-I2V-A14B-HIGH_fp8_e4m3fn_scaled_KJ.safetensors already exists, skipping download."
fi

########################################################
# Wan 2.2 I2V A14B — LOW noise (fp8 e4m3fn scaled, KJ)
########################################################
if [ ! -f "/ComfyUI/models/unet/Wan2_2-I2V-A14B-LOW_fp8_e4m3fn_scaled_KJ.safetensors" ]; then
  wget --content-disposition -O "/ComfyUI/models/unet/Wan2_2-I2V-A14B-LOW_fp8_e4m3fn_scaled_KJ.safetensors" \
    "https://huggingface.co/Kijai/WanVideo_comfy_fp8_scaled/resolve/main/I2V/Wan2_2-I2V-A14B-LOW_fp8_e4m3fn_scaled_KJ.safetensors"
  echo "✅ Model downloaded: Wan2_2-I2V-A14B-LOW_fp8_e4m3fn_scaled_KJ.safetensors"
else
  echo "✅ Wan2_2-I2V-A14B-LOW_fp8_e4m3fn_scaled_KJ.safetensors already exists, skipping download."
fi

###########################################
# umt5-xxl encoder (bf16) → clip directory
###########################################
if [ ! -f "/ComfyUI/models/clip/umt5-xxl-enc-bf16.safetensors" ]; then
  wget --content-disposition -O "/ComfyUI/models/clip/umt5-xxl-enc-bf16.safetensors" \
    "https://huggingface.co/Kijai/WanVideo_comfy/resolve/main/umt5-xxl-enc-bf16.safetensors"
  echo "✅ Model downloaded: umt5-xxl-enc-bf16.safetensors"
else
  echo "✅ umt5-xxl-enc-bf16.safetensors already exists, skipping download."
fi

if [ ! -f "/ComfyUI/models/vae/wan_2.1_vae.safetensors" ]; then
    wget --content-disposition -O "/ComfyUI/models/vae/wan_2.1_vae.safetensors" "https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/vae/wan_2.1_vae.safetensors"
    echo "✅ Model downloaded: wan_2.1_vae.safetensors"
else
    echo "✅ wan_2.1_vae.safetensors Model already exists, skipping download."
fi

###########################################
# Wan2.1 VAE (bf16) → vae directory
###########################################
if [ ! -f "/ComfyUI/models/vae/Wan2_1_VAE_bf16.safetensors" ]; then
  wget --content-disposition -O "/ComfyUI/models/vae/Wan2_1_VAE_bf16.safetensors" \
    "https://huggingface.co/Kijai/WanVideo_comfy/resolve/main/Wan2_1_VAE_bf16.safetensors"
  echo "✅ Model downloaded: Wan2_1_VAE_bf16.safetensors"
else
  echo "✅ Wan2_1_VAE_bf16.safetensors already exists, skipping download."
fi



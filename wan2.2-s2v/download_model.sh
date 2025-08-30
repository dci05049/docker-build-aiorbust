#!/usr/bin/env bash
set -euo pipefail

# Ensure directories exist
mkdir -p "/ComfyUI/models/loras" "/ComfyUI/models/unet"

# Diffusion model
if [ ! -f "/ComfyUI/models/diffusion_models/wan2.2_s2v_14B_bf16.safetensors" ]; then
    wget --content-disposition -O "/ComfyUI/models/diffusion_models/wan2.2_s2v_14B_bf16.safetensors" \
    "https://huggingface.co/Comfy-Org/Wan_2.2_ComfyUI_Repackaged/resolve/main/split_files/diffusion_models/wan2.2_s2v_14B_bf16.safetensors"
    echo "✅ Model downloaded: wan2.2_s2v_14B_bf16.safetensors"
else
    echo "✅ wan2.2_s2v_14B_bf16.safetensors already exists, skipping download."
fi

# Lora
if [ ! -f "/ComfyUI/models/loras/lightx2v_I2V_14B_480p_cfg_step_distill_rank128_bf16.safetensors" ]; then
    wget --content-disposition -O "/ComfyUI/models/loras/lightx2v_I2V_14B_480p_cfg_step_distill_rank128_bf16.safetensors" \
    "https://huggingface.co/Kijai/WanVideo_comfy/resolve/main/Lightx2v/lightx2v_I2V_14B_480p_cfg_step_distill_rank128_bf16.safetensors"
    echo "✅ Model downloaded: lightx2v_I2V_14B_480p_cfg_step_distill_rank128_bf16.safetensors"
else
    echo "✅ lightx2v_I2V_14B_480p_cfg_step_distill_rank128_bf16.safetensors already exists, skipping download."
fi

# Clip
if [ ! -f "/ComfyUI/models/clip/umt5_xxl_fp8_e4m3fn_scaled.safetensors" ]; then
    wget --content-disposition -O "/ComfyUI/models/clip/umt5_xxl_fp8_e4m3fn_scaled.safetensors" \
    "https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/text_encoders/umt5_xxl_fp8_e4m3fn_scaled.safetensors"
    echo "✅ Model downloaded: umt5_xxl_fp8_e4m3fn_scaled.safetensors"
else
    echo "✅ umt5_xxl_fp8_e4m3fn_scaled.safetensors already exists, skipping download."
fi

# VAE
if [ ! -f "/ComfyUI/models/vae/wan_2.1_vae.safetensors" ]; then
    wget --content-disposition -O "/ComfyUI/models/vae/wan_2.1_vae.safetensors" \
    "https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/vae/wan_2.1_vae.safetensors"
    echo "✅ Model downloaded: wan_2.1_vae.safetensors"
else
    echo "✅ wan_2.1_vae.safetensors already exists, skipping download."
fi



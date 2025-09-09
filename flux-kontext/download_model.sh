#!/usr/bin/env bash

# Direct download link from Civitai (replace with your actual link)\
mkdir -p /ComfyUI/models/upscale_models


if [ ! -f "/ComfyUI/models/diffusion_models/flux1-dev-kontext_fp8_scaled.safetensors" ]; then
    wget --content-disposition -O "/ComfyUI/models/diffusion_models/flux1-dev-kontext_fp8_scaled.safetensors" "https://huggingface.co/Comfy-Org/flux1-kontext-dev_ComfyUI/resolve/main/split_files/diffusion_models/flux1-dev-kontext_fp8_scaled.safetensors"
    echo "✅ Model downloaded: flux1-dev-kontext_fp8_scaled.safetensors"
else
    echo "✅ flux1-dev-kontext_fp8_scaled.safetensors Model already exists, skipping download."
fi

if [ ! -f "/ComfyUI/models/loras/place_it.safetensors" ]; then
    wget --content-disposition -O "/ComfyUI/models/loras/place_it.safetensors" "https://huggingface.co/ilkerzgi/Overlay-Kontext-Dev-LoRA/resolve/main/WVVtJFD90b8SsU6EzeGkO_adapter_model_comfy_converted.safetensors"
    echo "✅ Model downloaded: place_it.safetensors"
else
    echo "✅ place_it.safetensors Model already exists, skipping download."
fi

if [ ! -f "/ComfyUI/models/clip/t5xxl_fp16.safetensors" ]; then
    wget --content-disposition -O "/ComfyUI/models/clip/t5xxl_fp16.safetensors" "https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/t5xxl_fp16.safetensors"
    echo "✅ Model downloaded: t5xxl_fp16.safetensors"
else
    echo "✅ t5xxl_fp16.safetensors Model already exists, skipping download."
fi

if [ ! -f "/ComfyUI/models/clip/t5xxl_fp8_e4m3fn.safetensors" ]; then
    wget --content-disposition -O "/ComfyUI/models/clip/t5xxl_fp8_e4m3fn.safetensors" "https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/t5xxl_fp8_e4m3fn.safetensors"
    echo "✅ Model downloaded: t5xxl_fp8_e4m3fn.safetensors"
else
    echo "✅ t5xxl_fp8_e4m3fn.safetensors Model already exists, skipping download."
fi

if [ ! -f "/ComfyUI/models/clip/clip_l.safetensors" ]; then
    wget --content-disposition -O "/ComfyUI/models/clip/clip_l.safetensors" "https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/clip_l.safetensors"
    echo "✅ Model downloaded: clip_l.safetensors"
else
    echo "✅ clip_l.safetensors Model already exists, skipping download."
fi

if [ ! -f "/ComfyUI/models/vae/ae.safetensors" ]; then
    wget --content-disposition -O "/ComfyUI/models/vae/ae.safetensors" "https://huggingface.co/cocktailpeanut/xulf-dev/resolve/main/ae.safetensors?download=true"
    echo "✅ Model downloaded: ae.safetensors"
else
    echo "✅ ae.safetensors Model already exists, skipping download."
fi

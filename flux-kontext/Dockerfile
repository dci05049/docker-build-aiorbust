# Start from the base image
FROM ashleykza/comfyui:latest

RUN cd /ComfyUI/custom_nodes && \
    git clone --recursive https://github.com/gseth/ControlAltAI-Nodes.git && \
    git clone --recursive https://github.com/cubiq/ComfyUI_FaceAnalysis.git && \
    git clone --recursive https://github.com/liusida/ComfyUI-AutoCropFaces.git && \
    git clone --recursive https://github.com/WASasquatch/was-node-suite-comfyui.git && \
    git clone --recursive https://github.com/ssitu/ComfyUI_UltimateSDUpscale.git && \
    git clone https://github.com/cubiq/ComfyUI_essentials.git && \
    git clone https://github.com/ltdrdata/ComfyUI-Impact-Pack.git && \
    git clone https://github.com/ltdrdata/ComfyUI-Impact-Subpack.git && \
    git clone https://github.com/chrisgoringe/cg-use-everywhere.git && \
    git clone https://github.com/alexopus/ComfyUI-Image-Saver.git && \
    git clone https://github.com/kijai/ComfyUI-Florence2.git && \
    git clone https://github.com/city96/ComfyUI-GGUF.git && \
    find /ComfyUI/custom_nodes -name "requirements.txt" -exec pip install --no-cache-dir -r {} \; && \
    find /ComfyUI/custom_nodes -name "install.py" -exec python {} \;


RUN pip install insightface
RUN pip install onnxruntime
RUN pip install onnxruntime-gpu
    
# Copy and set up model downloading and custom start script
COPY download_model.sh /download_model.sh
COPY start.sh /start.sh
RUN chmod +x /start.sh


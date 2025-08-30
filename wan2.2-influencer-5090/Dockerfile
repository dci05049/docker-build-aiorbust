# Start from the base image
FROM ashleykza/comfyui:5090-py311-v0.3.36

# Upgrade pip to avoid caching issues
RUN pip install --upgrade pip

# Remove the existing torch
RUN pip uninstall -y torch torchvision torchaudio

# Install the version you want (example: CUDA 12.8 wheel for latest GPUs)
RUN pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu128

RUN cd /ComfyUI/custom_nodes && \
    git clone https://github.com/kijai/ComfyUI-KJNodes.git && \
    git clone https://github.com/kijai/ComfyUI-WanVideoWrapper.git && \
    git clone https://github.com/chibiace/ComfyUI-Chibi-Nodes.git && \
    git clone https://github.com/Smirnov75/ComfyUI-mxToolkit.git && \
    git clone https://github.com/chrisgoringe/cg-use-everywhere.git && \
    git clone https://github.com/pythongosssss/ComfyUI-Custom-Scripts.git && \
    git clone https://github.com/alt-key-project/comfyui-dream-video-batches.git && \
    git clone https://github.com/jamesWalker55/comfyui-various.git && \
    git clone https://github.com/kijai/ComfyUI-Florence2.git && \
    git clone https://github.com/cubiq/ComfyUI_essentials.git && \
    git clone https://github.com/Kosinkadink/ComfyUI-VideoHelperSuite.git


RUN find /ComfyUI/custom_nodes -name "requirements.txt" -exec pip install --no-cache-dir -r {} \; && \
    find /ComfyUI/custom_nodes -name "install.py" -exec python {} \;
    
# Copy and set up model downloading and custom start script
COPY download_model.sh /download_model.sh
COPY start.sh /start.sh
RUN chmod +x /start.sh


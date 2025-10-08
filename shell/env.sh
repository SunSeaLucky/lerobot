conda activate base && \
conda env remove -n lerobot -y && \
mamba create -n lerobot python=3.10 -y && \
conda activate lerobot && \
pip install -e ".[feetech]" && \
pip install -e ".[smolvla]"
#!/bin/bash

#
cd /workspace/
# Cause the script to exit on failure.
set -eo pipefail

# Activate the main virtual environment
. /venv/main/bin/activate

# Install the required packages
pip install transformers[sentencepiece] datasets evaluate wandb trl peft trackio huggingface_hub bitsandbytes accelerate unsloth

# Install support packages
pip install ipykernel ipywidgets scikit-learn rouge-score bert-score pandas numpy lighteval pytest pytest-cov tqdm vllm flash-attn

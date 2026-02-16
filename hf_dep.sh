#!/bin/bash

#
cd /workspace/
# Cause the script to exit on failure.
set -eo pipefail

# Activate the main virtual environment
. /venv/main/bin/activate

# Install the required packages
pip install transformers[sentencepiece] datasets evaluate wandb trl peft trackio huggingface_hub bitsandbytes accelerate ipykernel ipywidgets scikit-learn
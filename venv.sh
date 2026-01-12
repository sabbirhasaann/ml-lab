#!/bin/bash

# --- Venv Activation Script ---
# This script checks for a virtual environment and activates it.
# In Linux, the activation script is located in 'bin', not 'Scripts'.

VENV_PATH="./.venv/bin/activate"

# Check if the venv folder exists
if [ ! -f "$VENV_PATH" ]; then
    echo "Error: Virtual environment not found at $VENV_PATH"
    echo "Please make sure you have run 'python3 -m venv .venv'"
    # exit 1 
else
    echo "Activating virtual environment..."
    # Launch a new bash shell with the venv activated
    # --rcfile allows us to run the activation script and keep the shell open
    /bin/bash --rcfile <(echo "source $VENV_PATH")
fi

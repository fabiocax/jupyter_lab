#!/bin/bash
jupyter-lab --allow-root --collaborative --port=8000 --no-browser --ip=0.0.0.0 --NotebookApp.token=$JUPYTER_LAB_TOKEN --notebook-dir=projects/ --config=jupyter_lab_config.py
  

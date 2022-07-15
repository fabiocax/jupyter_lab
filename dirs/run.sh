#!/bin/bash
su labs -c "jupyter-lab  --collaborative --port=8000 --no-browser --ip=0.0.0.0 --NotebookApp.token=$JUPYTER_LAB_TOKEN --notebook-dir=/app/projects/ --config=/app/jupyter_lab_config.py"
  

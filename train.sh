#!/usr/bin/env bash

TASK="Unitree-G1-Flat"
N_ENV=4096
MAX_IT=3500

python scripts/train.py "$TASK" \
    --env.scene.num-envs="$N_ENV" \
    --agent.max-iterations="$MAX_IT" \
    --agent.save-interval=200 \
    --agent.logger=tensorboard

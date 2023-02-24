#!/bin/bash

nohup gunicorn keep_alive:app --bind 0.0.0.0:8080 &

python3 ms_rewards_farmer.py --session --fast --headless --telegram "${TOKEN}" "${CHAT_ID}" ;

python3 ms_rewards_farmer.py --everyday --start-at 04:00 --session --fast --headless --telegram "${TOKEN}" "${CHAT_ID}"


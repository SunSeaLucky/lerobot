conda activate lerobot

export LEADER_PORT=/dev/tty.usbmodem5AB01791901
export LEADER_ID=R12253601

export FOLLOWER_PORT=/dev/tty.usbmodem5A7A0551151
export FOLLOWER_ID=R07253601

export HF_USER=SunSeaLucky

export CUDA_VISIBLE_DEVICES=5,6
export DATASET_NAME=so102_test

# NO NEED TO MODIFY
export DATASET_PATH=${HF_USER}/${DATASET_NAME}
export JOB_NAME=act_${DATASET_NAME}
export OUTPUT_PATH=outputs/train/${JOB_NAME}
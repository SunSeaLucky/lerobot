. ./shell/SETUP_ENV.sh && \
python ./src/lerobot/scripts/train.py \
  --dataset.repo_id=${DATASET_PATH} \
  --policy.type=act \
  --output_dir=${OUTPUT_PATH} \
  --job_name=${JOB_NAME} \
  --policy.device=cuda \
  --policy.push_to_hub=false \
  --wandb.enable=false
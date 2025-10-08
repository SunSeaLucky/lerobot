. ./shell/SETUP_ENV.sh && \
python -m lerobot.record  \
  --robot.type=so101_follower --robot.port=$LEADER_PORT --robot.id=$LEADER_ID \
  --teleop.type=so101_leader --teleop.port=$FOLLOWER_PORT --teleop.id=$FOLLOWER_ID \
  --robot.disable_torque_on_disconnect=true \
  --robot.cameras="{'handeye': {'type': 'opencv', 'index_or_path': 0, 'width': 640, 'height': 360, 'fps': 30}, 'fixed': {'type': 'opencv', 'index_or_path': 1, 'width': 640, 'height': 360, 'fps': 30}}" \
  --display_data=true \
  --dataset.single_task="Put lego brick into the transparent box" \
  --policy.path=outputs/train/act_so101_test/checkpoints/last/pretrained_model
  --policy.device=cuda \
  --dataset.repo_id=${HF_USER}/eval_so101 --dataset.push_to_hub=false
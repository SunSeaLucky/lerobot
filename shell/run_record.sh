. ./shell/SETUP_ENV.sh && \
python -m lerobot.record \
    --robot.disable_torque_on_disconnect=true \
    --robot.type=so101_follower \
    --robot.port=$LEADER_PORT \
    --robot.id=$LEADER_ID \
    --robot.cameras="{'handeye': {'type':'opencv', 'index_or_path':0, 'width':640, 'height':360, 'fps':30}, 'fixed': {'type':'opencv', 'index_or_path':1, 'width':640, 'height':360, 'fps':30}}" \
    --teleop.type=so101_leader \
    --teleop.port=$FOLLOWER_PORT \
    --teleop.id=$FOLLOWER_ID \
    --display_data=true \
    --dataset.repo_id=${HF_USER}/so101_test \
    --dataset.num_episodes=10 --dataset.episode_time_s=20 \
    --dataset.single_task="Grab the yellow cube"

    # --robot.cameras="{'handeye': {'type':'opencv', 'index_or_path':0, 'width':1280, 'height':720, 'fps':30}, 'fixed': {'type':'opencv', 'index_or_path':2, 'width':1280, 'height':720, 'fps':30}}" \
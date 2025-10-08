. ./shell/SETUP_ENV.sh && \
python -m lerobot.teleoperate \
    --robot.type=so101_follower \
    --robot.port=$LEADER_PORT \
    --robot.id=$LEADER_ID \
    --robot.cameras="{'handeye': {'type':'opencv', 'index_or_path':0, 'width':640, 'height':360, 'fps':30}, 'fixed': {'type':'opencv', 'index_or_path':1, 'width':640, 'height':360, 'fps':30}}" \
    --teleop.type=so101_leader \
    --teleop.port=$FOLLOWER_PORT \
    --teleop.id=$FOLLOWER_ID \
    --display_data=true
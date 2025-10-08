. ./shell/SETUP_ENV.sh && \
python -m lerobot.teleoperate \
    --robot.type=so101_follower \
    --robot.port=$LEADER_PORT \
    --robot.id=$LEADER_ID \
    --teleop.type=so101_leader \
    --teleop.port=$FOLLOWER_PORT \
    --teleop.id=$FOLLOWER_ID
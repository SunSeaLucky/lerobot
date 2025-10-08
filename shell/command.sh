#run teleop
python -m lerobot.teleoperate     --robot.type=so101_follower     --robot.port=/dev/ttyACM0     --robot.id=R12253601     --teleop.type=so101_leader     --teleop.port=/dev/ttyACM1     --teleop.id=R07253601

#run teleop and show video
python -m lerobot.teleoperate     --robot.type=so101_follower     --robot.port=/dev/ttyACM0     --robot.id=R12253601     --robot.cameras="{ handeye: {type: opencv, index_or_path: /dev/video8, width: 640, height: 360, fps: 30}}"     --teleop.type=so101_leader     --teleop.port=/dev/ttyACM1     --teleop.id=R07253601     --display_data=true

#run teleop and save video
python -m lerobot.record \
    --robot.disable_torque_on_disconnect=true \
    --robot.type=so101_follower \
    --robot.port=/dev/ttyACM0 \
    --robot.id=R12253601 \
    --robot.cameras="{'handeye': {'type':'opencv', 'index_or_path':dev/video6, 'width':640, 'height':360, 'fps':30}, 'fixed': {'type':'opencv', 'index_or_path':'dev/video8', 'width':640, 'height':360, 'fps':30}}" \
    --teleop.type=so101_leader \
    --teleop.port=/dev/ttyACM1 \
    --teleop.id=R07253601 \
    --display_data=true \
    --dataset.repo_id=${HF_USER}/so101_test \
    --dataset.num_episodes=10 --dataset.episode_time_s=20 \
    --dataset.single_task="Grab the black cube"
    
# sudo chmod +666 /dev/ttyACM0 /dev/ttyACM1
sudo chmod +666 /dev/ttyACM0 /dev/ttyACM1
python -m lerobot.record \
--robot.disable_torque_on_disconnect=true \
--robot.type=so101_follower \
--robot.port=/dev/ttyACM0 \
--robot.id=R12253601 \
--robot.cameras="{'handeye': {'type':'opencv', 'index_or_path':'/dev/video6', 'width':640, 'height':360, 
'fps':30}, 'fixed': {'type':'opencv', 'index_or_path':'/dev/video8', 'width':640, 'height':360, 'fps':30}}" \
--teleop.type=so101_leader \
--teleop.port=/dev/ttyACM1 \
--teleop.id=R07253601 \
--display_data=true \
--dataset.repo_id=yjk/so101_test \
--dataset.push_to_hub=false \
--dataset.num_episodes=10 --dataset.episode_time_s=20 \
--dataset.single_task="Grab the blue cube"

#inference  
rm -rf /home/yjk/.cache/huggingface/lerobot/yjk/eval_so101 && python -m lerobot.record \
--robot.type=so101_follower \
--robot.disable_torque_on_disconnect=true \
--robot.port=/dev/ttyACM0 \
--robot.cameras='{ "handeye": {"type": "opencv", "index_or_path": "/dev/video6", "width": 640, "height": 360, "fps": 30}, "fixed": {"type": "opencv", "index_or_path":
"/dev/video8", "width": 640, "height": 360, "fps": 30}}' \
--robot.id=R12253601 \
--display_data=true \
--dataset.single_task="Pick up the blue box" \
--dataset.repo_id=yjk/eval_so101 \
--dataset.push_to_hub=false \
--policy.path=outputs/train/act_so101_test/checkpoints/last/pretrained_model \
--policy.device=cuda




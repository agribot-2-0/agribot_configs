
export AGRIBOT_HOME=$HOME
export PATH=$AGRIBOT_HOME/agribot/bin:$PATH

source /opt/ros/melodic/setup.bash
source $AGRIBOT_HOME/agribot/workspace/base_ws/install/setup.bash
source $AGRIBOT_HOME/agribot/workspace/hal_ws/install/setup.bash
source $AGRIBOT_HOME/agribot/workspace/simulation_ws/install/setup.bash

source $AGRIBOT_HOME/agribot/configs/base/map/config.bash
source $AGRIBOT_HOME/agribot/configs/simulation/config.bash

source /usr/share/colcon_argcomplete/hook/colcon-argcomplete.bash

if [ "$1" == "simulation" ]
then
    source $AGRIBOT_HOME/agribot/configs/base/bringup/config_simulation.bash
    export ROS_MASTER_URI=http://127.0.0.1:11311
    export ROS_IP=127.0.0.1
elif [ "$1" == "jetson" ]
then
    source $AGRIBOT_HOME/agribot/configs/base/bringup/config.bash
    export ROS_MASTER_URI=http://10.0.1.2:11311
    export ROS_IP=192.168.0.141
elif [ "$1" == "advantech" ]
then
    source $AGRIBOT_HOME/agribot/configs/base/bringup/config.bash
    export ROS_MASTER_URI=http://10.0.1.2:11311
    export ROS_IP=10.0.1.2
else
    echo "Platform should be specify in first argument"
fi

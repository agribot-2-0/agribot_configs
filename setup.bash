
export AGRIBOT_HOME=$HOME
export PATH=$AGRIBOT_HOME/agribot/bin:$PATH

source /opt/ros/melodic/setup.bash
source $AGRIBOT_HOME/agribot/workspace/base_ws/install/setup.bash
source $AGRIBOT_HOME/agribot/workspace/hal_ws/install/setup.bash
source $AGRIBOT_HOME/agribot/workspace/simulation_ws/install/setup.bash

source $AGRIBOT_HOME/agribot/configs/base/map/config.bash
source $AGRIBOT_HOME/agribot/configs/simulation/config.bash

if [ "$1" == "simulation" ]
then
    source $AGRIBOT_HOME/agribot/configs/base/bringup/config_simulation.bash
else
    source $AGRIBOT_HOME/agribot/configs/base/bringup/config.bash
fi

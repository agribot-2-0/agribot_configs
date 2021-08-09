#!/usr/bin/env bash

export AGRIBOT_HOME=$HOME
source $HOME/agribot/zed_ws/devel/setup.bash
source $AGRIBOT_HOME/agribot/configs/setup.bash jetson

exec "$@"

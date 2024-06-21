#!/bin/bash
set -e

# start udev
/lib/systemd/systemd-udevd --daemon

# setup ros2 environment
source "/opt/ros/$ROS_DISTRO/setup.bash"
source "$WORKSPACE_ROOT/install/setup.bash"

exec "$@"

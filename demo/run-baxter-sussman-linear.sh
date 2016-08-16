#!/bin/sh

## Compute a task-motion plan to solve the sussman anomaly with a
## Rethink Baxter robot.


export ROS_PACKAGE_PATH=/opt/ros/indigo/share
export PATH="..:$PATH"

tmsmt 'package://baxter_description/urdf/baxter.urdf' \
      baxter-sussman/sussman-0.robray \
      baxter-sussman/allowed-collision.robray \
      domains/linear-blocksworld/linear-blocksworld.pddl \
      domains/linear-blocksworld/linear-blocksworld.py \
      -g baxter-sussman/sussman-1.robray  \
      -o baxter-sussman-linear.tmp \
      --gui \
      --verbose
#!/bin/bash

# Print Ubuntu version
echo "Ubuntu Version:"
lsb_release -d | cut -f2

# Print ROS version
echo -e "\nROS Version:"
rosversion -d

# Print Catkin Tools version
echo -e "\nCatkin Tools Version:"
catkin --version


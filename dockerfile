# Use the ROS Noetic desktop full image as a base
FROM osrf/ros:noetic-desktop-full

# Set maintainer label
LABEL maintainer="zhouhaonan@mail.sdu.edu.cn"

# Update and install any additional packages you need
RUN apt-get update && apt-get install -y \
    python3-catkin-tools \
    tightvncserver \
    lsb-release \
    lxterminal \
    && rm -rf /var/lib/apt/lists/*
#     lxde \

# Source ROS Noetic setup in bashrc
RUN echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc

RUN mkdir -p /root/.vnc

# Copy any additional files or scripts into the container
COPY ./xstartup /root/.vnc/xstartup
COPY ./scripts  /root
COPY ./catkin   /root

# Set any environment variables if needed
ENV USER=root

# Expose VNC port
EXPOSE 5901

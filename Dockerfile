FROM ros:kinetic

WORKDIR /app/warthog_ws/src/warthog

COPY . .

WORKDIR /app/warthog_ws
RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
RUN apt-get update
RUN apt-get install -y curl wget
RUN curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
RUN apt-get update
RUN apt-get install -y ros-kinetic-xacro ros-kinetic-realsense2-description ros-kinetic-velodyne-description ros-kinetic-lms1xx
# RUN catkin_make


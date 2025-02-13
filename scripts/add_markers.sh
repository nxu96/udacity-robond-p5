#!/bin/sh
cp ../dwa_local_planner_params.yaml /opt/ros/kinetic/share/turtlebot_navigation/param/
xterm -e "roslaunch turtlebot_gazebo turtlebot_world.launch" &
sleep 5
xterm -e "roslaunch turtlebot_gazebo amcl_demo.launch map_file:=/home/workspace/catkin__p5/src/udacity-robond-p5/map/map.yaml" &
sleep 5
xterm -e "roslaunch turtlebot_rviz_launchers view_navigation.launch" &
sleep 5 
xterm -e "rosrun add_markers show_markers"
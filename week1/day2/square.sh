#!/bin/bash
S="ros2 service call /turtle1/teleport_absolute turtlesim/srv/TeleportAbsolute"
ros2 service call /turtle1/set_pen turtlesim/srv/SetPen \
"{r: 0, g: 120, b: 255, width: 4, off: 0}"
$S "{x: 3.0, y: 3.0, theta: 0.0}"
$S "{x: 8.0, y: 3.0, theta: 0.0}"
$S "{x: 8.0, y: 8.0, theta: 0.0}"
$S "{x: 3.0, y: 8.0, theta: 0.0}"
$S "{x: 3.0, y: 3.0, theta: 0.0}"

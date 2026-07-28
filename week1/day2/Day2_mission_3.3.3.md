# Day2 3.3 실습 미션③
```bash 

$ ros2 bag record -o my_first_bag /chatter
[INFO] [1785230935.608666159] [rosbag2_recorder]: Press SPACE for pausing/resuming
[INFO] [1785230935.614008340] [rosbag2_storage]: Opened database 'my_first_bag/my_first_bag_0.db3' for READ_WRITE.
[INFO] [1785230935.615126792] [rosbag2_recorder]: Listening for topics...
[INFO] [1785230935.615179091] [rosbag2_recorder]: Event publisher thread: Starting
[INFO] [1785230935.615757757] [rosbag2_recorder]: Subscribed to topic '/chatter'
[INFO] [1785230935.615799346] [rosbag2_recorder]: Recording...
[INFO] [1785230935.615935199] [rosbag2_recorder]: All requested topics are subscribed. Stopping discovery...
[INFO] [1785230945.161062339] [rosbag2_cpp]: Writing remaining messages from cache to the bag. It may take a while
[INFO] [1785230945.162248628] [rosbag2_recorder]: Event publisher thread: Exiting
[INFO] [1785230945.162899177] [rosbag2_recorder]: Recording stopped


$ ros2 bag info my_first_bag

Files:             my_first_bag_0.db3
Bag size:          25.0 KiB
Storage id:        sqlite3
Duration:          9.369588398s
Start:             Jul 28 2026 18:28:55.626185125 (1785230935.626185125)
End:               Jul 28 2026 18:29:04.995773523 (1785230944.995773523)
Messages:          20
Topic information: Topic: /chatter | Type: std_msgs/msg/String | Count: 20 | Serialization Format: cdr

$ ros2 bag play my_first_bag
[INFO] [1785231025.088467340] [rosbag2_storage]: Opened database 'my_first_bag/my_first_bag_0.db3' for READ_ONLY.
[INFO] [1785231025.088528179] [rosbag2_player]: Set rate to 1
[INFO] [1785231025.090036547] [rosbag2_player]: Adding keyboard callbacks.
[INFO] [1785231025.090052965] [rosbag2_player]: Press SPACE for Pause/Resume
[INFO] [1785231025.090057382] [rosbag2_player]: Press CURSOR_RIGHT for Play Next Message
[INFO] [1785231025.090078384] [rosbag2_player]: Press CURSOR_UP for Increase Rate 10%
[INFO] [1785231025.090081968] [rosbag2_player]: Press CURSOR_DOWN for Decrease Rate 10%
[INFO] [1785231025.090318993] [rosbag2_storage]: Opened database 'my_first_bag/my_first_bag_0.db3' for READ_ONLY.
```

## 학습포인트  
몇개의 메세지가 담겼는가?  
:총 20개의 메세지가 담겼다.  
발행자가 없는데도 listener가 녹화된 데이터를 다시 받음.  


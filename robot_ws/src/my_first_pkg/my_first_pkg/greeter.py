import rclpy # ROS2 파이썬 라이브러리
from rclpy.node import Node
from std_msgs.msg import String # 문자열 메시지 타입


class Greeter(Node):
	def __init__(self):
		super().__init__("greeter") # 노드 이름
		self.pub = self.create_publisher(String, "greeting", 10)
		self.timer = self.create_timer(1.0, self.tick) # 1초마다 실행
		self.count = 0
	def tick(self):
		msg = String()
		msg.data = f"Hello ROS2! ({self.count})"
		self.pub.publish(msg) # /greeting 토픽으로 발행
		self.count += 1
def main():
	rclpy.init()
	rclpy.spin(Greeter()) # 노드를 계속 실행


if __name__ == "__main__":
	main()

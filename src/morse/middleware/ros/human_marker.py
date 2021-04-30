import logging; logger = logging.getLogger("morse." + __name__)
from geometry_msgs.msg import Pose, PoseStamped, PoseWithCovarianceStamped, Vector3, Quaternion, TwistStamped, Twist
from morse.middleware.ros import ROSPublisher, ROSPublisherTF, mathutils
from morse.middleware.ros.human_msgs.msg import HumanMarkerStamped

def get_orientation(self):
    """ Get the orientation from the local_data
    and return a ROS geometry_msgs.Quaternion
    """
    ros_quat = Quaternion()
    if 'orientation' in self.data:
        mathutils_quat = self.data['orientation']
    else:
        euler = mathutils.Euler((self.data['roll'],
                                 self.data['pitch'],
                                 self.data['yaw']))
        mathutils_quat = euler.to_quaternion()

    ros_quat.x = mathutils_quat.x
    ros_quat.y = mathutils_quat.y
    ros_quat.z = mathutils_quat.z
    ros_quat.w = mathutils_quat.w

    return ros_quat

def get_position(self):
    """ Get the position from the local_data
    and return a ROS geometry_msgs.Vector3
    """
    position = Vector3()
    if 'position' in self.data:
        position.x = self.data['position'][0]
        position.y = self.data['position'][1]
        position.z = self.data['position'][2]
    else:
        position.x = self.data['x']
        position.y = self.data['y']
        position.z = self.data['z']

    return position

def get_pose(self):
    """ Get the pose from the local_data
    and return a ROS geometry_msgs.Pose
    """
    pose = Pose()
    pose.position = get_position(self)
    pose.orientation = get_orientation(self)

    return pose

class HumanMarkerPublisher(ROSPublisher):
    """ Published human marker message which contains the following information.
    1. The twist of the robot.
    2. The position and orientation of the robot as ROS geometry_msgs.Pose
       message.
    3. h_id of the human which needs to be initialized (default = 1)
    4. active status of the human to accept the velocity commands
    """
    ros_class = HumanMarkerStamped
    default_frame_id = '/map'

    def default(self, ci='unused'):
        human = HumanMarkerStamped()
        human.header = self.get_ros_header()
        if 'valid' not in self.data or self.data['valid']:
            pose = get_pose(self)

        twist = Twist()
        twist.linear.x = self.data['world_linear_velocity'][0]
        twist.linear.y = self.data['world_linear_velocity'][1]
        twist.linear.z = self.data['world_linear_velocity'][2]
        twist.angular.x = self.data['angular_velocity'][0]
        twist.angular.y = self.data['angular_velocity'][1]
        twist.angular.z = self.data['angular_velocity'][2]

        human.human.id = 0
        human.human.active = False
        human.human.pose = pose
        human.human.velocity = twist

        self.publish(human)

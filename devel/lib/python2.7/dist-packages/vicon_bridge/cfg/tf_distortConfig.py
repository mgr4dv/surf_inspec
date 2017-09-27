## *********************************************************
## 
## File autogenerated for the vicon_bridge package 
## by the dynamic_reconfigure package.
## Please do not edit.
## 
## ********************************************************/

from dynamic_reconfigure.encoding import extract_params

inf = float('inf')

config_description = {'upper': 'DEFAULT', 'lower': 'groups', 'srcline': 235, 'name': 'Default', 'parent': 0, 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'cstate': 'true', 'parentname': 'Default', 'class': 'DEFAULT', 'field': 'default', 'state': True, 'parentclass': '', 'groups': [], 'parameters': [{'srcline': 280, 'description': 'rate at which tf publishes transforms. ', 'max': 250.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'tf_pub_rate', 'edit_method': '', 'default': 100.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'determine if output will be published.', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'tf_publish', 'edit_method': '', 'default': True, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 280, 'description': 'tf reference frame.', 'max': '', 'cconsttype': 'const char * const', 'ctype': 'std::string', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'tf_ref_frame', 'edit_method': '', 'default': 'world', 'level': 0, 'min': '', 'type': 'str'}, {'srcline': 280, 'description': 'tf input frame.', 'max': '', 'cconsttype': 'const char * const', 'ctype': 'std::string', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'tf_frame_in', 'edit_method': '', 'default': 'in', 'level': 0, 'min': '', 'type': 'str'}, {'srcline': 280, 'description': 'tf output frame.', 'max': '', 'cconsttype': 'const char * const', 'ctype': 'std::string', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'tf_frame_out', 'edit_method': '', 'default': 'tf_distort/out', 'level': 0, 'min': '', 'type': 'str'}, {'srcline': 280, 'description': 'delay [ms]. ', 'max': 1000, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'delay', 'edit_method': '', 'default': 0, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 280, 'description': 'scale of the position measurement', 'max': 10.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'position_scale', 'edit_method': '', 'default': 1.0, 'level': 0, 'min': 0.01, 'type': 'double'}, {'srcline': 280, 'description': 'noise distribution. Standard deviation in case for normal, max. in case for uniform distribution. ', 'max': '', 'cconsttype': 'const char * const', 'ctype': 'std::string', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'noise_type', 'edit_method': "{'enum_description': 'An enum to set the noise distribution.', 'enum': [{'srcline': 11, 'description': 'normal distributed noise.', 'srcfile': '/home/administrator/catkin_ws/src/vicon_bridge/cfg/tf_distort.cfg', 'cconsttype': 'const char * const', 'value': 'normal', 'ctype': 'std::string', 'type': 'str', 'name': 'NORMAL'}, {'srcline': 12, 'description': 'uniform distributed noise.', 'srcfile': '/home/administrator/catkin_ws/src/vicon_bridge/cfg/tf_distort.cfg', 'cconsttype': 'const char * const', 'value': 'uniform', 'ctype': 'std::string', 'type': 'str', 'name': 'UNIFORM'}]}", 'default': 'normal', 'level': 0, 'min': '', 'type': 'str'}, {'srcline': 280, 'description': 'std dev for roll and pitch [deg]. ', 'max': 2.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'sigma_roll_pitch', 'edit_method': '', 'default': 0.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'std dev for yaw [deg]. ', 'max': 2.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'sigma_yaw', 'edit_method': '', 'default': 0.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'std dev for x/y [m]. ', 'max': 1.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'sigma_xy', 'edit_method': '', 'default': 0.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'std dev for z [m]. ', 'max': 1.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'sigma_z', 'edit_method': '', 'default': 0.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'gain for random walk disturbance in x/y axis.', 'max': 10.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'random_walk_k_xy', 'edit_method': '', 'default': 0.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'gain for random walk disturbance in z axis.', 'max': 10.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'random_walk_k_z', 'edit_method': '', 'default': 0.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'std dev for gauss markov process in x/y axis [m].', 'max': 20.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'random_walk_sigma_xy', 'edit_method': '', 'default': 0.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'std dev for gauss markov process in x/y axis [m].', 'max': 20.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'random_walk_sigma_z', 'edit_method': '', 'default': 0.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'time constant for gauss markov process in x/y axis [s].', 'max': 3000.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'random_walk_tau_xy', 'edit_method': '', 'default': 0.001, 'level': 0, 'min': 1.0, 'type': 'double'}, {'srcline': 280, 'description': 'time constant for gauss markov process in z axis [s].', 'max': 3000.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'random_walk_tau_z', 'edit_method': '', 'default': 0.001, 'level': 0, 'min': 1.0, 'type': 'double'}], 'type': '', 'id': 0}

min = {}
max = {}
defaults = {}
level = {}
type = {}
all_level = 0

#def extract_params(config):
#    params = []
#    params.extend(config['parameters'])    
#    for group in config['groups']:
#        params.extend(extract_params(group))
#    return params

for param in extract_params(config_description):
    min[param['name']] = param['min']
    max[param['name']] = param['max']
    defaults[param['name']] = param['default']
    level[param['name']] = param['level']
    type[param['name']] = param['type']
    all_level = all_level | param['level']

tf_distort_NORMAL = 'normal'
tf_distort_UNIFORM = 'uniform'

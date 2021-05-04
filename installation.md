# Installation (Ubuntu 18.04 and 16.04)

This guide presents the installation procedure for a custom version of MORSE used in [CoHAN Planner Navigation](https://github.com/sphanit/CoHAN_Navigation). 

1. Install the dependencies for ROS
	```
	sudo apt install python3-pip
	pip3 install pyyaml catkin_pkg rospkg
	```
	**WARNING**: Please avoid using ```sudo apt install python3-rospkg``` as it can cause issues with the existing installation of ROS.  
1. Clone the source repository into your workspace
	```
	git clone https://github.com/sphanit/morse.git -b cohan_melodic
	```
	
2. Install from the source
	```
	cd morse
	mkdir build && cd build
	cmake ..
	sudo make install
	```
	More about the cmake options and installation details can be found [here](https://www.openrobots.org/morse/doc/1.2/user/installation.html). **DO NOT** install using apt as it is not compatible with CoHAN and also has few unresolved issues with ros-melodic.
	
3. Install blender, if it is not already installed
	Ubuntu 18.04: ``` sudo apt install blender=2.79.b+dfsg0-1ubuntu1.18.04.1 ```
	Ubuntu 16.04: ``` sudo apt install blender=2.76.b+dfsg0-3build1 ``` 
	
4. Check if everything is installed properly
	Type ```morse check```  in a terminal and it should return:
	```
	Your environment is correctly setup to run MORSE
	```
## Using virtual environment
If you want to avoid any issues with ROS and prefer a local installation, virtual environments can be a great alternative. 

1. Install the necessary packages
	``` 
	sudo apt install python3-pip
	sudo apt install python3-venv
	``` 
2. Create the virtual env
	```
	python3 -m venv morse_env
	source morse_env/bin/activate
	```
3. Once the ```morse_env``` is active, clone and install the MORSE locally
	```
	git clone https://github.com/sphanit/morse.git -b cohan_melodic
	cd morse
	mkdir build && cd build
	cmake -DPYTHON_EXECUTABLE=/"PATH_TO_VIRTUAL_ENVS"/morse_env/bin/python3 -DCMAKE_INSTALL_PREFIX=/"PATH_TO_VIRTUAL_ENVS"/morse_env ..
	make install
	``` 
4. Install blender (see above) and run ```morse check``` to check if everything is properly installed. 

Note: While using virtual env, launch only morse simulation in it and ROS packages can throw errors due to incompatibility with python3. 

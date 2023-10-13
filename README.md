
# ROS Noetic Docker

A Docker container image for the Robot Operating System (ROS) Noetic release. This container provides an isolated environment to run and develop ROS Noetic applications, ensuring compatibility and consistency across different setups. Notably, this image supports graphical desktop functionality, remote access capabilities when run inside a container, and will soon offer access to the host's GPU.

## Prerequisites

- **Docker**: Ensure Docker is installed on your system. If not, follow the [official Docker installation guide](https://docs.docker.com/get-docker/).

## Preface

This repository is in its initial stages. While it currently offers a "lightweight" experience, it's ideal for newcomers looking to start with Docker or for those who need a pre-configured image that addresses challenges such as graphical interfaces, remote access, and GPU connections. Additionally, more test nodes will be uploaded in the future. 

We wholeheartedly welcome contributions! If you have suggestions, bug reports, or enhancements, please open an issue or submit a pull request.

## Getting Started

1. **Clone the Repository**:
    ```bash
    git clone https://github.com/ZhouHaonanShens/ros_neotic_docker.git
    cd ros_neotic_docker
    ```

2. **Build the Docker Image**:
    ```bash
    docker build -t jasonchow1997/ros_neotic:latest .
    ```

3. **Run the ROS Noetic Docker Container**:
    ```bash
    docker run -it --rm -p 5901:5901 jasonchow1997/ros_neotic:latest
    ```
    Note: The container will self-delete upon exit. Successful execution of this command indicates a successfully built image.

4. **Check the Version of ROS, Ubuntu, and Catkin Tools**:
    ```bash
    # Execute within the container
    cd /root/scripts
    bash ./version_check.bash
    ```
    Three labels indicating the versions should be displayed.

5. **Enable Graphical Desktop and Remote Access**:
    ```bash
    # Execute within the container
    cd /root/scripts
    bash ./enable_desktop.bash
    ```
    After setting your VNC password, access the container's desktop by connecting to "127.0.0.1:5901" using a VNC viewer. Internet-based connections are also supported, but require appropriate router port forwarding configurations.

## Features

- **Isolation**: Preserve the cleanliness of your system by running ROS Noetic within a Docker container.
- **Consistency**: Guarantee uniform behavior across different setups.
- **Portability**: Effortlessly share and deploy your ROS Noetic applications.

## Usage Tips

- Use the `-v` flag with `docker run` to attach a volume to the container for persistent storage or to exchange files between your host and the container.
- A VNC viewer is essential if you wish to use the GUI and the Desktop.

## License

This project is protected under the [MIT License](LICENSE).

## Acknowledgements

- ROS Noetic: [Official Website](http://wiki.ros.org/noetic)
- Docker: [Official Documentation](https://docs.docker.com/)


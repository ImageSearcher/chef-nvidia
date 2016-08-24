default[:nvidia][:arch] = 'x86_64'
default[:nvidia][:version] = '364.19'

default[:nvidia_docker][:file] = "nvidia-docker_1.0.0.rc.3_amd64.tar.xz"
default[:nvidia_docker][:url] = "https://github.com/NVIDIA/nvidia-docker/releases/download/v1.0.0-rc.3/#{default[:nvidia_docker][:file]}"

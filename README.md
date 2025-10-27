# Docker and NVIDIA Container Toolkit Setup Instructions

1. Install the NVIDIA Container Toolkit (v1.18)
https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html

2. Configure Docker to enable NVIDIA CDI hooks
```sh
sudo nvidia-ctk runtime configure --runtime=docker
```

3. Restart Docker to apply changes
```sh
sudo systemctl restart docker
```

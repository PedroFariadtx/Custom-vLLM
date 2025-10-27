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



# Tmux commands

## Start a new tmux session named 'llm_server'
tmux new-session -s llm_server

## Attach to the 'llm_server' session
tmux attach-session -t llm_server

## Capture the current pane's content in the 'llm_server' session
tmux capture-pane -t llm_server -p

## List all tmux sessions
tmux ls

## Kill the 'llm_server' session
tmux kill-session -t llm_server

## Detach from the current tmux session
Ctrl + b, then d
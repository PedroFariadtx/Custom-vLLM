echo "Starting LLM server..."
tmux new-session -d -s llm_server './scripts/llm_server.sh'
if [ $? -eq 0 ]; then
    sleep 30
fi
echo "Starting STT server..."
tmux new-session -d -s stt_server './scripts/stt_server.sh'
if [ $? -eq 0 ]; then
    sleep 30
fi
echo "Starting embed server..."
tmux new-session -d -s embed_server './scripts/embed_server.sh'
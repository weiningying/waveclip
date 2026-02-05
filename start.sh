#!/bin/bash

# 音频剪辑器启动脚本
# 支持局域网访问

PORT=${1:-8080}

echo "🎵 音频剪辑器启动中..."
echo ""
echo "📍 访问地址："
echo "   本机: http://localhost:$PORT"
echo "   局域网: http://$(hostname -I | awk '{print $1}'):$PORT"
echo ""
echo "按 Ctrl+C 停止服务器"
echo ""

python3 -m http.server $PORT --bind 0.0.0.0

#!/bin/sh

ollama serve &

echo "Aguardando o Ollama iniciar..."
sleep 5

echo "Baixando o modelo DeepSeek..."
ollama pull deepseek-coder:1.3b

ollama list

wait

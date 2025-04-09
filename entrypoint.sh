#!/bin/sh

ollama serve &

echo "Aguardando o Ollama iniciar..."
sleep 5

echo "Baixando o modelo DeepSeek..."
ollama pull deepseek-coder:1.3b

echo "Baixando o modelo Codellama..."
ollama pull codellama:7b

echo "Baixando o modelo Codegemma..."
ollama pull codegemma:2b

echo "Baixando o modelo Gemma3..."
ollama pull gemma3:4b

echo "Baixando o modelo Llama3.2..."
ollama pull llama3.2

ollama list

wait

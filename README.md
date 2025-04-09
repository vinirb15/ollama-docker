# 🧠 Local LLM API with Ollama + Docker

Run multiple open-source large language models (LLMs) locally using [Ollama](https://ollama.com/) in a Docker container. This setup allows you to quickly spin up an HTTP API for models like `deepseek-coder`, `codellama`, `mistral`, `llama2`, and more — entirely offline.

---

## 🚀 Features

- 🧠 Supports multiple LLMs via [Ollama](https://ollama.com/library)
- 🐳 Docker-based: fast, portable, and isolated
- 🌐 Exposes HTTP API at `http://localhost:11434`
- ⚙️ Automatically downloads selected models on container startup
- ✅ Great for local development, testing, and AI experiments without relying on cloud APIs

---

## 📦 Included Models (configurable)

By default, the container pulls the following models on startup:

- `deepseek-coder:1.3b`
- `codellama:13b`
- `mistral:7b`
- `llama2:7b`

You can customize the models pulled by editing the `entrypoint.sh` file.

---

## 🛠️ Usage

### 1. Clone the project

```bash
git clone https://github.com/youruser/local-llm-ollama-docker.git
cd local-llm-ollama-docker
```

### 2. Build the Docker image
```bash
docker build -t ollama-deepseek .
```

### 3. Run the Docker container
```bash
docker run -it -d -p 11434:11434 --name ollama-deepseek ollama-deepseek
```
## Utils

### Run OpenWebUI
```bash
docker run -d \
  -p 8080:8080 \
  --add-host=host.docker.internal:host-gateway \
  -e OLLAMA_API_BASE_URL=http://host.docker.internal:11434 \
  --name open-webui \
  ghcr.io/open-webui/open-webui:main
```

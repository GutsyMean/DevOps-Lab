# Basic-Dockerfile

A DevOps project that uses Docker to build a minimal container that prints a custom greeting.

This project demonstrates how to build a lightweight Docker image using the `alpine` base image. The container prints a message like “Hello, Captain!” or “Hello, \[your name]!” when run.

## Requirements

Ensure the following are installed on your system:

* Docker

If you're on Windows, install [Docker Desktop](https://www.docker.com/products/docker-desktop/) and ensure it’s running. You may also use WSL 2 as the backend.

## How to Build & Run

Clone the repository:

```bash
git clone https://github.com/GutsyMean/DevOps-Lab.git
cd Basic-Dockerfile
```

### Build the Docker image:

```bash
docker build -t hello-captain .
```

### Run the image with a custom name:

```bash
docker run --rm hello-captain YOUR_NAME
```

If no name is provided, it will default to “Captain”.

## Project URL

[https://roadmap.sh/projects/basic-dockerfile](https://roadmap.sh/projects/basic-dockerfile)


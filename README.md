# cpp-env

```
docker compose build --no-cache \
    --build-arg uid=$(id -u) \
    --build-arg gid=$(id -g)

docker compose up -d
```
## vscode extension install 

```
./.devcontainer/vscode-extension-install.sh 
```
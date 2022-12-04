# cpp-env

## Submodule

```
git submodule init
git submodule update
```

## vscode extension install 

```
./.devcontainer/vscode-extension-install.sh 
```


## GUIの表示

参考: [VNCでDockerコンテナ内のGUIデスクトップにアクセスしてみた](https://kamino.hatenablog.com/entry/docker_vnc)

```
apt-get install locales-all
DEBIAN_FRONTEND=noninteractive apt install -y lxde
apt-get install tightvncserver
apt-get install -y novnc websockify

cp ~/.vnc/xstartup  ~/.vnc/xstartup
```

```
export DISPLAY=:1
vncserver :1 -geometry 800x600 -depth 24
websockify -D --web=/usr/share/novnc/ 18001 localhost:5901
```
#!/bin/bash

# Visual Studio Code :: Package list
pkglist=(
        ms-vscode.cpptools-extension-pack
		oderwat.indent-rainbow
		pkief.material-icon-theme
		mosapride.zenkaku
		aaron-bond.better-comments
		shardulm94.trailing-spaces
		njpwerner.autodocstring
		gruntfuggly.todo-tree
		tchojnacki.cpp-compile
		GitHub.copilot-chat
)

for var in ${pkglist[@]}
do
    code --install-extension $var
done
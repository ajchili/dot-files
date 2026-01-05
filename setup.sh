#!/bin/bash

mkdir -p ~/.config

if [ ! -e ~/.config/fish ]; then
    ln -sf "$PWD/.config/fish/config.fish" ~/.config/fish/config.fish
fi
if [ ! -e ~/.config/git ]; then
    ln -sf "$PWD/.config/git" ~/.config/git
fi
if [ ! -e ~/.config/ghostty ]; then
    ln -sf "$PWD/.config/ghostty" ~/.config/ghostty
fi
if [ ! -e ~/.config/jj/config.toml ]; then
	  ln -sf "$PWD/.config/jj/config.toml" ~/.comfig/jj/config.toml
fi

if [ ! -e ~/.config/starship.toml ]; then
    ln -sf "$PWD/.config/starship.toml" ~/.config/starship.toml
fi

ln -sf "$PWD/.config/nvim" ~/.config/nvim

dot_files=(".tmux.conf" ".vimrc" ".zshrc")
for file in "${dot_files[@]}"; do
  ln -sf "$PWD/$file" ~/$file
done

# VSCode
extensions=("esbenp.prettier-vscode"
  "streetsidesoftware.code-spell-checker"
  "usernamehw.errorlens"
  "eamodio.gitlens"
  "dbaeumer.vscode-eslint"
  "ms-azuretools.vscode-docker"
  "johnpapa.vscode-peacock"
  "ms-vscode.remote-explorer"
  "ms-vscode-remote.remote-ssh"
  "ms-vscode-remote.remote-ssh-edit"
  "pnp.polacode"
  "oderwat.indent-rainbow"
  "gruntfuggly.todo-tree"
  "mhutchie.git-graph"
  "vscode-icons-team.vscode-icons"
  "JoseVSeb.google-java-format-for-vs-code")

for extension in "${extensions[@]}"; do
  code --install-extension "$extension"
done

themes=("wesbos.theme-cobalt2" "zhuangtongfa.material-theme")

for theme in "${themes[@]}"; do
  code --install-extension "$theme"
done

cp -r .config/Code ~/Library/Application\ Support

brew install jj

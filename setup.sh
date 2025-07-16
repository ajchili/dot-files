#!/bin/bash

mkdir -p ~/.config

ln -sf "$PWD/.config/git" ~/.config/git
ln -sf "$PWD/.config/helix" ~/.config/helix

dot_files=(".vimrc" ".zshrc")
for file in "${dot_files[@]}"; do
    ln -sf "$PWD/$file" ~/$file
done

# VSCode
extensions=("esbenp.prettier-vscode" \
    "streetsidesoftware.code-spell-checker" \
    "usernamehw.errorlens" \
    "eamodio.gitlens"\
    "dbaeumer.vscode-eslint" \
    "ms-azuretools.vscode-docker" \
    "johnpapa.vscode-peacock" \
    "ms-vscode.remote-explorer" \
    "ms-vscode-remote.remote-ssh" \
    "ms-vscode-remote.remote-ssh-edit" \
    "pnp.polacode" \
    "oderwat.indent-rainbow" \
    "gruntfuggly.todo-tree" \
    "mhutchie.git-graph" \
    "vscode-icons-team.vscode-icons" \
    "JoseVSeb.google-java-format-for-vs-code")

for extension in "${extensions[@]}"; do
    code --install-extension "$extension"
done

themes=("wesbos.theme-cobalt2" "zhuangtongfa.material-theme")

for theme in "${themes[@]}"; do
    code --install-extension "$theme"
done

cp -r .config/Code ~/Library/Application\ Support

# hx
brew install helix
# hx language servers
brew install marksman jdtls ruff
npm i -g typescript typescript-language-server vscode-langservers-extracted

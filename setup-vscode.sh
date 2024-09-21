#!/usr/bin/env bash

cd /tmp

# Install font
mkdir -p ~/.local/share/fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/CascadiaCode.zip
unzip CascadiaCode.zip -d CascadiaFont
cp CascadiaFont/*.ttf ~/.local/share/fonts
rm -rf CascadiaCode.zip CascadiaFont

# Install vscode extensions
wget https://raw.githubusercontent.com/thiagolepidus/vscode-settings/main/extensions.txt
cat extensions.txt | while read extension || [[ -n $extension ]];
do
  code --install-extension $extension --force
done
rm -f extensions.txt

cd -

# Install PHP_CodeSniffer
composer global require squizlabs/php_codesniffer
COMPOSER_BIN_DIR="$(composer global config bin-dir --absolute)"

# Set vscode settings
wget https://raw.githubusercontent.com/thiagolepidus/vscode-settings/main/settings.json -O ~/.config/Code/User/settings.json
sed -i "s|\"phpSniffer\.executablesFolder\": *\"[^\"]*\"|\"phpSniffer.executablesFolder\": \"$COMPOSER_BIN_DIR\"|" ~/.config/Code/User/settings.json

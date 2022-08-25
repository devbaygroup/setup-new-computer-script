#!/bin/bash

echo "========== Installing xcode cli development tools =========="
xcode-select --install

if [[ $(uname -m) == 'arm64' ]]; then
    echo "========== Installing rosetta =========="
    /usr/sbin/softwareupdate --install-rosetta --agree-to-license

    echo "========== Set Homebrew path =========="
    export PATH=$PATH:/opt/homebrew/bin
fi

if [[ $(uname -m) == 'x86_64' ]]; then
    echo "========== Set Homebrew path =========="
    grep -rl --exclude=\*.{sh,md} '/opt/homebrew/bin' ./ | xargs sed -i "" 's/\/opt\/homebrew\/bin/\/usr\/local\/bin/g'
    export PATH=$PATH:/usr/local/bin
fi

echo "========== Installing Homebrew =========="
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
sudo chown -R $(whoami) $(brew --prefix)/*

echo "========== Executing Ansible Playbook =========="
brew install ansible
ansible-playbook playbook.yaml --ask-become-pass

#!/bin/bash

# sudo apt update && sudo apt install -y gnupg software-properties-common curl
# curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
# sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
# sudo apt-get install terraform=0.14.9
go install github.com/google/go-containerregistry/cmd/gcrane@latest
sudo git clone https://github.com/ahmetb/kubectx /opt/kubectx
sudo ln -s /opt/kubectx/kubectx /usr/local/bin/kubectx
sudo ln -s /opt/kubectx/kubens /usr/local/bin/kubens

wget https://raw.githubusercontent.com/ahmetb/kubectl-aliases/master/.kubectl_aliases

mv .kubectl_aliases ~/

code --install-extension GitHub.copilot
code --install-extension GitHub.copilot-chat
code --install-extension ms-python.python
code --install-extension ms-python.debugger
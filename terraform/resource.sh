sudo apt-get update

# docker installl

sudo apt-get install docker.io -y

sudo usermod -aG docker $USER

sudo systemctl enable docker


# kind installl

curl -Lo ./kind https://kind.sigs.k8s.io/dl/latest/kind-linux-amd64
chmod +x ./kind
sudo mv ./kind /usr/local/bin/kind

# kubectl install

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl

# gitlab-runner installl

curl -L https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.deb.sh | sudo bash
sudo apt install gitlab-runner -y

sudo usermod -aG docker gitlab-runner

sudo gitlab-runner register \
  --non-interactive \
  --url "https://gitlab.com/" \
  --registration-token "youer-token" \
  --executor "shell"

sudo systemctl enable gitlab-runner


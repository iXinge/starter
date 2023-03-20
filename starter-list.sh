sudo apt-get install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
sudo chsh -s $(which zsh)


sudo apt-get install python3-dev python3-pip libmysqlclient-dev
sudo apt-get install openjdk-8-jdk
sudo apt-get install mysql-server
sudo apt-get install nginx
sudo mysql_secure_installation


(
CREATE USER 'dev'@'%' IDENTIFIED BY 'dev'; 
GRANT ALL ON *.* TO 'dev'@'%';
FLUSH PRIVILEGES;
)

# mysql server 8 config
use mysql;
update user set host='localhost' where user='dev';
ALTER USER 'dev'@'localhost' IDENTIFIED BY 'dev';
grant all privileges on *.* to dev@'localhost'




sudo apt-get install redis
sudo apt-get install maven
sudo apt-get install nodejs
sudo apt-get install npm
sudo apt-get install mongo


ssh-keygen -t rsa -b 4096 -C "ixingo@126.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

git config --global user.name "Shawn Wang"
git config --global user.email "ixingo@126.com"
# Rename the master to main branch
git branch -m master main
git push -u origin main
# change default branch from master to main, example: https://github.com/iXingo/WebPage/settings/branches
git push origin --delete master
# Or direct change from Github and then
git branch -m master main
git fetch origin
git branch -u origin/main main
git remote set-head origin -a
# set mian as default branch 
git config --global init.defaultBranch main


#For Gnome preview like macOS
sudo apt-get install gnome-sushi

# install docker [Docker](https://docs.docker.com/engine/install/ubuntu/#set-up-the-repository)
sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
sudo mkdir -m 0755 -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin


# minikube
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube_latest_amd64.deb
sudo dpkg -i minikube_latest_amd64.deb


# kubectl [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/)
sudo apt-get update
sudo apt-get install -y ca-certificates curl
sudo apt-get install -y apt-transport-https
sudo curl -fsSLo /etc/apt/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
echo "deb [signed-by=/etc/apt/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubectl

# helm [helm](https://helm.sh/docs/intro/install/)
curl https://baltocdn.com/helm/signing.asc | gpg --dearmor | sudo tee /usr/share/keyrings/helm.gpg > /dev/null
sudo apt-get install apt-transport-https --yes
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/helm.gpg] https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
sudo apt-get update
sudo apt-get install helm

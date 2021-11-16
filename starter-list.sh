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

sudo apt-get -y install apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get -y install docker-ce
sudo usermod -a -G docker $USER
docker run hello-world
docker pull ubuntu

echo "IF DOCKER INSTALLED YOU SHOULD SEE A ROOT SHELL BELOW ... "
echo " please 'exit' when your ready "
docker run -it ubuntu bash

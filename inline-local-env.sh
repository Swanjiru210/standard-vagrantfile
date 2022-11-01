$script = <<-SCRIPT

sudo apt update -y

sudo cat /etc/system-release   -y 

sudo apt install -y httpd mariadb-server

sudo systemctl start httpd

sudo systemctl enable httpd

sudo systemctl is-enabled httpd

echo "Install Java JDK 8"
sudo apt remove -y java
sudo amazon-linux-extras install java-openjdk11

echo "Install git"
sudo apt install -y git

amazon-linux-extras install epel
sudo apt update -y
sudo apt install ansible -y
sudo apt update -y
sudo apt install nginx -y
sudo ufw app list
sudo ufw allow 'Nginx HTTP'
sudo ufw status
#systemctl status nginx
curl -4 icanhazip.com

curl "https://s3.amazonaws.com/aws-cli/awscli-bundle-1.16.312.zip" -o "awscli-bundle.zip"
unzip awscli-bundle.zip
sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
sudo /usr/local/bin/python3.7 awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
aws --version
cd /home 
touch hug.yml 
touch nat.yml 

echo " Install Terraform"
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update -y && sudo apt install terraform -y
terraform --version

echo "Install Docker engine"
sudo apt update -y
apt install docker -y
systemctl start docker
systemctl enable docker
systemctl status docker
#sudo usermod -a -G docker jenkins
#sudo service docker start

echo " install Alpine"


echo "Install Jenkins"
docker run \
  -u root \
  --rm \
  -d \
  -p 8080:8080 \
  -p 50000:50000 \
  --name myjenkin \
  -v jenkins-data:/var/jenkins_home \
  -v /var/run/docker.sock:/var/run/docker.sock \
  jenkins/jenkins
sudo docker run hello-world 
sudo service docker start
sudo service docker enable
#sudo service docker status
#sudo usermod -a -G docker jenkins
#sudo service docker start

echo " install Alpine"


echo "Install Jenkins"
docker run \
  -u root \
  --rm \
  -d \
  -p 8080:8080 \
  -p 50000:50000 \
  --name myjenkin \
  -v jenkins-data:/var/jenkins_home \
  -v /var/run/docker.sock:/var/run/docker.sock \
  jenkins/jenkins
  
SCRIPT

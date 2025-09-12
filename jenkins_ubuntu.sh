      # java jdk is pre-requisites for jenkins first we need to install java jdk

sudo apt update
sudo apt install openjdk-17-jre

      # check verison
java -version


      # for installing jenkins

curl -fsSL https://pkg.jenkins.io/debian/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins


      # check jenkins version
jenkins -version


      # you need to add 8080 port in ec2 security groups - inbound rules
      # after that run the below cmd to get pwd

sudo cat /var/lib/jenkins/secrets/initialAdminPassword


# then select install suggested plugins  and create profile 

#! /bin/bash
#Launch an instance with 9000 and t2.medium


cd /opt/

wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-8.9.6.50800.zip

unzip sonarqube-8.9.6.50800.zip

yum install -y java-11-amazon-corretto-devel

useradd sonar

chown sonar:sonar sonarqube-8.9.6.50800 -R

chmod 777 sonarqube-8.9.6.50800 -R

su - sonar

#run this on server manually

sh /opt/sonarqube-8.9.6.50800/bin/linux-x86-64/sonar.sh start

#echo "user=admin & password=admin"





# once done run below commands :

# chmod 777 sonar.sh
# sh sonar.sh
# sh /opt/sonarqube-8.9.6.50800/bin/linux-x86-64/sonar.sh start




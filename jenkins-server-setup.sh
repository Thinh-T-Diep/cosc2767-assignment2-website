

#Installing Java
sudo amazon-linux-extras install java-openjdk11 -y

#Installing Maven
cd /opt
wget https://dlcdn.apache.org/maven/maven-3/3.8.6/binaries/apache-maven-3.8.6-bin.tar.gz
tar -xvzf apache-maven-3.8.6-bin.tar.gz
mv apache-maven-3.8.6 maven

#Copying bash profile for maven and Java path
cd ~
cp ~/cosc2767-assignment2-website/.bash_profile .
source .bash_profile

#Downloading and installing Jenkins
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
yum install jenkins -y

#Start Jenkins
service jenkins start

#Get admin password to start Jenkins
cat /var/lib/jenkins/secrets/initialAdminPassword

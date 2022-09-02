#Installing Docker and starting
yum install docker -y
service docker start

#Pulling the Docker image from Docker Hub
docker pull thinhtdiep/tomcat-image-s3825459

#Running a container with the custom image
docker run -d --name tomcat-container -p 8081:8080 thinhtdiep/tomcat-image-s3825459

#Adding a Docker admin
useradd dockeradmin
passwd dockeradmin
usermod -aG docker dockeradmin

#Enabling logging in with password on EC2 instance
cd ~
cp ~/cosc2767-assignment2-website/sshd_config /etc/ssh/
service sshd reload

#Copy the prepared context and user configuration files into the Tomcat app
cp ~/cosc2767-assignment2-website/context.xml /opt/tomcat/webapps/host-manager/META-INF/
cp ~/cosc2767-assignment2-website/context.xml /opt/tomcat/webapps/manager/META-INF/
cp ~/cosc2767-assignment2-website/tomcat-users.xml /opt/tomcat/conf/

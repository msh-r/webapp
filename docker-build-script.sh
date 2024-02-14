REMOTE_USER="ubuntu"                        # Username on the remote EC2 instance
REMOTE_HOST="34.229.151.248"    # IP address or DNS name of the remote EC2 instance
DOCKERFILE_PATH="/home/ubuntu/webapp"  # Path to your Dockerfile on the remote EC2 instance

#docker run -d --name tomcat-container -p 8081:8090 tomcat-image
# SSH into the remote EC2 instance and execute Docker build
#docker build -t tomcat_image $(basename $DOCKERFILE_PATH)
#docker stop $(docker ps -aq) && docker rm $(docker ps -aq)
#docker rmi $(docker images -q)

sudo -u ubuntu ssh -i /home/ubuntu/.ssh/id_rsa $REMOTE_USER@$REMOTE_HOST << EOF
  echo "Connected to remote instance."
  cd $(dirname $DOCKERFILE_PATH)
  docker rmi mytomcat_image:latest  
  docker build -t mytomcat $(basename $DOCKERFILE_PATH)
  docker images -a
  sudo -u ubuntu docker run -d --name tomcat-container -p 8090:8080 mytomcat
EOF


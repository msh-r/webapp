REMOTE_USER="ubuntu"                        # Username on the remote EC2 instance
REMOTE_HOST="3.89.27.8"    # IP address or DNS name of the remote EC2 instance
DOCKERFILE_PATH="/home/ubuntu/webapp"  # Path to your Dockerfile on the remote EC2 instance

# SSH into the remote EC2 instance and execute Docker build
sudo -u ubuntu ssh -i /home/ubuntu/.ssh/id_rsa $REMOTE_USER@$REMOTE_HOST << EOF
  echo "Connected to remote instance."
  cd $(dirname $DOCKERFILE_PATH)
  docker rmi $(docker images -q)  
  docker stop $(docker ps -aq) && docker rm $(docker ps -aq) 
  docker build -t tomcat_image $(basename $DOCKERFILE_PATH)
  docker run -d --name tomcat-container -p 8081:8090 tomcat-image
EOF

sudo docker run --detach \
  --hostname gitlab.example.com \
  --publish 192.168.1.123:443:443 \
  --publish 192.168.1.123:80:80 \
  --publish 192.168.1.123:22:22 \
  --name gitlab \
  --restart always \
  --volume $GITLAB_HOME/config:/etc/gitlab \
  --volume $GITLAB_HOME/logs:/var/log/gitlab \
  --volume $GITLAB_HOME/data:/var/opt/gitlab \
  gitlab/gitlab-ee:latest

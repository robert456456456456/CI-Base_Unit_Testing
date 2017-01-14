#get last update image from docker hub
sudo docker pull 456456/dockerpythont
#stop in local docker host old container and remove him
sudo docker stop nauseous_wescoff
sudo docker rm nauseous_wescoff
#run new version of our container
sudo docker run -d -p 5000:5000 --name nauseous_wescoff -P 456456/dockerpythont

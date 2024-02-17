#!/bin/bash
#Author: SURYA
#Description: Deploying a django application
#Date of Creation: 17/02/2024
#Date of Modification: 17/02/2024

<< task
Deploy a django app and handle the code for errors
task

code_clone() {
	echo "Cloning the repository"
	git clone https://github.com/LondheShubham153/django-notes-app.git
}

install_requirements() {
	echo "Installing dependencies"
	sudo apt-get install docker.io nginx -y docker-compose
}

required_restarts() {
	echo "restarting the required services"
	sudo chown $USER /var/run/docker.sock
	#sudo systemctl enable docker
	#sudo systemctl enable nginx
	#sudo systemctl restart docker
}

deploy_app() {
	echo "Deploying the app"
	docker build -t notes-app .
	#docker run -d -p 8000:8000 notes-app:latest
	docker-compose up -d
}

echo "****************** Deployment started *********************"

if ! code_clone; then
	echo "The code directory already exists"
	cd django-notes-app
fi

if ! install_requirements; then
	echo "requirements are not installed properly"
	echo "Installation failed"
	exit 1
fi

if ! required_restarts; then
	echo "restarts not completed properly"
	exit 1
fi

if ! deploy_app; then
	echo "Deployment failed, mailing the admin"
	exit 1
fi

echo "****************** Deployment completed *********************"

pipeline {
    agent {
        docker {
            image 'jenkins/jenkins:lts'
        }
    }
  
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t arthurjones/task:latest .'
            }
        }
        stage('Push to Docker Hub') {
            steps {
                sh 'docker login -u arthurjones -p Roll#947131'
                sh 'docker push arthurjones/task:latest'
            }
        }
    }


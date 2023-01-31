pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'PROD',
                credentialsId: 'arthurjones.cloudlem',
                url: 'https://github.com/arthur-cloudlem/task.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh ' docker build -t arthurjones/moon .'
            }
        }
         
       
         stage('Push to Docker Hub') {
            steps {
                    sh ' docker login -u arthurjones -p Roll#947131'
                    sh ' docker push arthurjones/moon:latest'
                }
   
        }              
    }
    }
pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'PROD',
                credentialsId: 'arthurjones.cloudlem',
                url: 'https://github.com/arthur-cloudlem/task2.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'sudo docker build -t arthurjones/task2 .'
            }
        }
         
       
         stage('Push to Docker Hub') {
            steps {
                    sh 'sudi docker login -u arthurjones -p Roll#947131'
                    sh 'sudi docker push arthurjones/task2:latest'
                }
   
        }              
    }
    }
pipeline {
    agent {
        docker {
            image 'jenkins/jenkins:lts'
        }
    }
    stages {
        stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/PROD']], 
                doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], 
                userRemoteConfigs: [[credentialsId: 'arthurjones.cloudlem', url: 'https://github.com/arthur-cloudlem/task.git']]])
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t arthurjones/task2:latest .'
            }
        }
        stage('Push to Docker Hub') {
            steps {
                sh 'docker login -u arthurjones -p Roll#947131'
                sh 'docker push arthurjones/task2:latest'
            }
            
        }
    }
}
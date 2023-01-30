pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'docker rmi arthurjones/task:latest -f'
                sh 'docker build -t arthurjones/task:latest . '
            }
        }
        
        stage('login') {
            steps {
                sh 'docker login -u arthurjones -p Roll#947131'
           }
        }
        
        stage('push') {
            steps {
        sh 'docker push arthurjones/task:latest'
      
            }
        }   
        
        
        
       }    
}
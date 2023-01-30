pipeline {
    agent any
 
    stages {
       stage('Checkout') {
            steps {
            checkout scmGit(branches: [[name: '**']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/arthur-cloudlem/task.git']])
            }
       }
         stage('Clone Repository') {
            steps {
            git branch: 'DEV', url: 'https://github.com/arthur-cloudlem/task.git'
            }
        }
        stage('purn docker data'){
            steps{
             sh 'docker system prune --volumes -f' 
            }
        }   
         stage('start container') {
            steps {
           sh 'docker-compose up -d --no-color'
           sh 'docker compose ps'
           }
        }
         stage('A Few Instructions'){
             steps{
                 echo 'Composing has succeded now the scritp will indicate any errors and if not proceed to next stage you can also test it manually if you want on the local host provided below'
             }
         }
        
         stage('run test against container'){
             steps{
             git branch: 'DEV', url: 'https://github.com/arthur-cloudlem/task.git'
              timeout(time: 5, unit: 'MINUTES') {
             sh 'node server.js'
             }
            }
         }
        //   stage('Push Docker Image to Docker Hub') {
        //      steps {
        //          sh 'docker login --username= --password=$DOCKER_HUB_PASSWORD'
        //          sh 'docker tag fullstack-app:latest $DOCKER_HUB_USERNAME/fullstack-app:$BUILD_NUMBER'
        //          sh 'docker push $alpha04/app-01:$BUILD_NUMBER'
        //           }
        //     }
         
         
         }
        post {
    always {
      sh 'docker compose down --remove-orphans -v'
      sh 'docker compose ps'
       
    //   sh ' docker login --username=alpha04 --password-stdin <<< $DOCKER_REGISTRY_PASSWORD'
    //   sh 'docker tag fullstack-app:latest $DOCKER_REGISTRY_USERNAME/fullstack-app:$BUILD_NUMBER'
    //   sh 'docker push $alpha04/app-01:$BUILD_NUMBER'
      echo 'DONE'
    }
  }
          
    }
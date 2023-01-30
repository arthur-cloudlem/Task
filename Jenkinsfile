pipeline{
    agent any

    stages{
        stage("Merge DEV into PROD") {
            steps {
                git branch: 'DEV', url: 'https://github.com/arthur-cloudlem/task.git'
                git checkout('PROD')
                git merge('DEV')
                git push(url: 'https://github.com/arthur-cloudlem/task.git', branch: 'PROD')
            }
        }



        stage("build"){
            steps{
                echo'Building the application'
            }
        }


        stage("test"){
            steps{
                echo'testing the application'
            }
        }


        stage("deploy"){
            steps{
                echo'deploying the application'
            }
        }
    }
}

node{
    //groovy script
}
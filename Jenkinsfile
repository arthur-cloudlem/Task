pipeline{
    agent any

stage("Merge DEV into PROD") {
    steps {
        try {
            git branch: 'DEV', url: 'https://github.com/arthur-cloudlem/task.git'
            git checkout('PROD')
            git merge('DEV')
            git push(url: 'https://github.com/arthur-cloudlem/task.git', branch: 'PROD')
        } catch (error) {
            echo error.toString()
        }
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

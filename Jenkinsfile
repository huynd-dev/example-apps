pipeline {
    agent any 
    stages {
        stage('Test'){
            steps {
                git branch: 'sub', credentialsId: 'huynd1', url: 'git@github.com:huynd-dev/example-apps.git'
            }
        }
        stage('Build profile-service') {
                when { changeset "profile-service/*"}
                        steps {
                            sh 'bash ./build-and-deploy.sh profile-service'
                    }
            }
        stage('Build profile-service 2') {
                        steps {
                            sh 'bash ./build-and-deploy.sh profile-service'
                    }
            }
    }
}

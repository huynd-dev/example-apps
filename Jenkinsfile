pipeline {
    agent any 
    stages {
        stage('Build profile-service') {
                when { changeset "profile-service/*"}
                        steps {
                            sh 'bash ./build-and-deploy.sh profile-service'
                    }
            }
        stage('Build profile-service 2') {
                        steps {
                            sh 'ls -la'
                    }
            }
    }
    post {
        always {
            deleteDir()
        }
    }
}

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
                            service = 'profile-service'
                            sh 'bash build-and-deploy.sh $profile-service'
                    }
            }
    }
    post {
        always {
            deleteDir()
        }
    }
}

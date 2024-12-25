pipeline {
    agent any 
    stages {
        stage('Build profile-service') {
                when { changeset "profile-service/*"}
                        steps {
                            sh '''bash build-and-deploy.sh profile-service'''
                    }
            }
    }
    post {
        always {
            deleteDir()
        }
    }
}

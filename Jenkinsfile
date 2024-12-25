def 
pipeline {
    agent any 
    environment {
    REGISTRY_URL = 'dannhanong'
    max = 100000000
    TAG = "${Math.abs(new Random().nextInt(max+1))}"
    }
    stages {
        stage('Test'){
            steps {
                git branch: 'sub', credentialsId: 'huynd1', url: 'git@github.com:dannhanong/links-manager.git'
                sh "ls -lat"
            }
        }
        stage('Build profile-service') {
                when { changeset "profile-service/*"}
                        steps {
                            script {
                                def IMAGE = "${REGISTRY_URL}/profile-service:${TAG}"
                                echo "${IMAGE}"
                                echo 1
                            }
                        }
                }
        stage('Build profile-service 1') {
            steps {
                script {
                      def IMAGE = "${REGISTRY_URL}/profile-service:${TAG}"
                      echo IMAGE
                      echo "hello"
                }
            }
        }
        stage('Build profile-service 1') {
            steps {
                script {
                      def IMAGE = "${REGISTRY_URL}/profile-service:${TAG}"
                      echo "hello"
                      sh 'echo ${IMAGE}'
                }
            }
        }
    }
}

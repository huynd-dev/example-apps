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
                            echo "${IMAGE_profile_service}"
                        }
                }
        stage('Build service-folder') {
                when { changeset "service-folder/*"}
                        steps {
                            sh 'cd service-folder'
                            sh 'mvn package -DskipTests'
                        }
        }
        stage('Deploy') {
            steps {
                script {
                    env.FILENAME = 'Hehe'
                    a = 'helllo'
                }
            }
        }
        stage('Deploy1') {
            steps {
                sh 'echo ${a}'
            }
        }
    }
}

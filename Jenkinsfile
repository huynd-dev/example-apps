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
            }
        }
        stage('Build profile-service') {
                when { changeset "profile-service/*"}
                        steps {
                            sh '''
                            echo 1
                            echo 2
                            '''
                        }
             }
        stage('Build profile-service 1') {
                 steps {
                        sh '''
                        #!/bin/bash
                        a = 1
                        b = 2
                        echo $a
                        echo $b
                        '''
                        }
             }
    }
}

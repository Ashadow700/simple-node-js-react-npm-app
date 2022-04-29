pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'docker build -t node:react-test .'
            }
        }
        stage('Deliver') {
            steps {
                sh 'chmod 751 ./jenkins/scripts/myDeliver.sh'
                sh './jenkins/scripts/myDeliver.sh'
            }
        }
        stage('Cleanup') {
            steps {
                sh 'docker rmi $(docker images -qa -f "dangling=true") || true'
            }
        }
    }
}

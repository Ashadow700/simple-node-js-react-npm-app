pipeline {
    agent {
        docker {
            image 'node:latest' 
            args '-p 3000:3000 -u root:root' 
        }
    }
    stages {
        stage('Build') { 
            steps {
                sh 'echo my simple node and stuff'
                sh 'npm install' 
            }
        }
    }
    stage('Test') {
        steps {
            sh 'echo at test'
            sh './jenkins/scripts/test.sh'
        }
    }
}

pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'docker build -t sample:dev2 .'
            }
        }
        stage('Deliver') {
            steps {
                sh 'docker run -it --rm -p 3005:3005 -e CHOKIDAR_USEPOLLING=true sample:dev2'
            }
        }
    }
}

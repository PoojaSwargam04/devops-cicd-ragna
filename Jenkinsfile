pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t devops-cicd-ragna .'
            }
        }

        stage('Deploy') {
            steps {
                sh '''
                docker rm -f devops-cicd-ragna || true
                docker run -d -p 8081:8080 --name devops-cicd-ragna devops-cicd-ragna
                '''
            }
        }
    }
}

pipeline {
    agent any

    stages {
        stage('Git') {
            steps {
                git branch: 'master', url: 'https://github.com/Salem-ops220/Devopss.git'
            }
        }

        stage('Pre-Build Maven') {
            steps {
                sh 'mvn clean'
            }
        }

        stage('Build & Test') {
            steps {
                sh 'mvn compile test'
            }
        }

        stage('Publish Test Results') {
            steps {
                junit '**/target/surefire-reports/*.xml'
            }
        }
    }

    post {
        success {
            mail to: 'salemajimi22@gmail.com',
                 subject: 'SUCCESS',
                 body: 'Build succeeded.'
        }
        failure {
            mail to: 'salemajimi22@gmail.com',
                 subject: 'FAILURE',
                 body: 'Build failed.'
        }
    }
}

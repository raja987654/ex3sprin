pipeline {
    agent any
    tools {
        maven 'maven'
    }
    stages {
        stage('Clean up') {
            steps {
                deleteDir()
            }
        }
        stage('Clone repo') {
            steps {
                bat 'git clone https://github.com/raja987654/ex2spring.git'
            }
        }
        stage('Generate Backend image') {
            steps {
                dir('ex2spring') { // Ensure the directory matches the cloned repo
                    bat 'mvn clean install'
                    bat 'docker build -t docex1-spring .'
                }
            }
        }
        stage('Run Docker Compose') {
            steps {
                dir('ex2spring') { // Again, ensure the directory matches
                    bat 'docker compose up -d'
                }
            }
        }
    }
}

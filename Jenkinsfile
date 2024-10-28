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
                bat 'git clone https://github.com/raja987654/ex3sprin.git'
            }
        }
        stage('Generate Backend image') {
            steps {
                dir('ex3sprin') {
                    bat 'mvn clean install'
                    bat 'docker build -t docex1-spring .'
                }
            }
        }
        stage('Run Docker Compose') {
            steps {
                dir('ex3sprin') {
                    bat 'docker compose up -d'
                }
            }
        }
    }
}

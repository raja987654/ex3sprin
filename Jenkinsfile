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
                sh 'git clone https://github.com/raja987654/ex3sprin.git'
            }
        }

        stage('Generate Backend image') {
            steps {
                dir('ex3sprin') { // Assurez-vous que le nom du répertoire est correct
                    sh 'mvn clean install'
                    sh 'docker build -t docex1-spring .'
                }
            }
        }

        stage('Run Docker Compose') {
            steps {
                dir('ex3sprin') { // Assurez-vous que le chemin est correct
                    sh 'docker compose up -d'
                }
            }
        }
    }
}

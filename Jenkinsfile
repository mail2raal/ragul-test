pipeline {
    agent { 
        node {
            label 'DockerContainers_APP'
        }
    }
    stages {
 
    stage('Clean Workspace') {
        steps {
            cleanWs()
        }
    }
        stage('Test Hostagent') {
            steps {
            echo 'Test connection of host agent for docker containers'
        }
        }
        
        stage('Docker TestConn') {
            steps {
            sh "docker ps -a"
            }
        }
        
        stage('Pulling Github') {
            steps {
                git url: 'https://github.com/mail2raal/ragul-test.git', branch: 'master'
            }
        }
        
        stage('Docker build') {
            steps {
                sh "docker build -t trackbox_api:v${BUILD_NUMBER} ."
                sh "docker rm -f trackbox"
                sh "docker run -d -it -p 8081:8081 --name trackbox trackbox_api:v${BUILD_NUMBER}"
            }
        }
    }

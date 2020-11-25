#!/usr/bin/env groovy

node('docker') {

    checkout scm

    def dockerImage

    stage('Build') {
        dockerImage = docker.build("dubhad/test-nginx-api:latest")
    }

    stage('Test') {
        dockerImage.withRun('-p 8081:8080') {
            sh 'curl -f http://localhost:8081'
        }
    }

    stage('Push') {
        docker.withRegistry('https://index.docker.io/v1/', 'dockerhub-dubhad') {
            dockerImage.push()
        }
    }
}
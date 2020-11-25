#!/usr/bin/env groovy

node('docker') {

    checkout scm

    def dockerImage

    stage('Build'){
        dockerImage = dockers.build("dubhad/test-nginx-api:latest")
    }

    stage('Push'){
        docker.withRegistry('https://index.docker.io/v1/', 'dockerhub-dubhad') {
            dockerImage.push()
        }
    }
}
#!/usr/bin/env groovy

node {

    stage('Checkout'){
        checkout scm
    }

    def dockerImage

    stage('Build'){
        image = docker.build("dubhad/test-nginx-api:latest")
    }

    stage('Push'){
        docker.withRegistry('https://index.docker.io/v1/', 'e5b26721-1837-46bb-9850-2408994f3110') {
            image.push()
        }
    }
}
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
        image.push()
    }
}
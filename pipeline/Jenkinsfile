#!/usr/bin/env groovy

node {

    stage('Checkout'){
        checkout scm
    }

    stage('Build'){
        def image = docker.build("dubhad/test-nginx-api:latest")
    }

    stage('Push'){
        image.push()
    }
}
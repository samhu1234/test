pipeline {
  agent any
  stages {
    stage('copy file') {
      steps {
        sh '''#!/bin/bash
cd /root
scp deploy-nginx.sh vultr-93:/root'''
      }
    }
  }
}
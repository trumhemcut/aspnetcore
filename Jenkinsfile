pipeline {
  agent {
    docker {
      image 'microsoft/aspnetcore-build:1.0-1.1'
      args '-v '
    }
    
  }
  stages {
    stage('Build') {
      steps {
        sh 'dotnet restore'
      }
    }
  }
}
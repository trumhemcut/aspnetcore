pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
    }
    
  }
  stages {
    stage('Build') {
      steps {
        sh 'dotnet restore'
      }
    }
    stage('Unit Test') {
      steps {
        sh 'cd test && dotnet restore && dotnet test --logger "trx;LogFileName=abc.trx"'
      }
    }
    stage('Staging') {
      steps {
        sh 'dotnet run'
      }
    }
  }
}
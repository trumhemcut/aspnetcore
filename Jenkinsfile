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
        sh 'cd test && dotnet restore && dotnet test'
      }
    }
    stage('Staging') {
      steps {
        sh 'cd.. && dotnet run'
      }
    }
  }
}
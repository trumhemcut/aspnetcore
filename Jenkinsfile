pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
    }
    
  }
  stages {
    stage('Build') {
      steps {
        sh '''cd src
dotnet restore
dotnet build
dotnet publish -c Release -o ./artifacts'''
      }
    }
    stage('Unit Test') {
      steps {
        sh 'cd test && dotnet restore && dotnet test --logger "trx;LogFileName=abc.trx"'
      }
    }
    stage('Staging') {
      steps {
        sh 'cd src && dotnet restore && dotnet run'
      }
    }
  }
}
pipeline {
  agent { dockerfile true }

  stages {
    stage("Dependencies") {
      steps {
        sh "bundle install --path vendor/bundle"
      }
    }

    stage("Build") {
      steps {
        sh "bundle exec middleman build --verbose"
      }
    }

    stage("Deploy") {
      when { branch "master" }

      environment {
        AWS_ACCESS_KEY_ID = credentials("aws_access")
        AWS_SECRET_ACCESS_KEY = credentials("aws_secret")
      }

      steps {
        sh "aws s3 sync build/ s3://localyokals-production/"
      }
    }
  }
}

pipeline {
    agent any
    tools {
        /* 'nodejs 툴을 node16.17.0 이라고 등록한 걸 사용 한다.' */
        nodejs 'Nodejs16.17.0'
    }
    stages {
        stage('build') {
            steps {
                echo 'building the application... START !!!'
                sh 'pwd'
                sh "npm install"
                sh "npm run build"
            }
        }
        stage('docker') {
            steps {
                echo 'testing the application...'
                sh 'docker build --tag dodreamuserservice:1.0 .'
            }
        }
        stage('deploy') {
            steps {
                echo 'deploying the application... END !!!'
            }
        }
    }
}

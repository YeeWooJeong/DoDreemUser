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
                sh 'docker build --tag dodreemuserservice:1.0 .'
            }
        }
        stage('deploy') {
            steps {
                sh 'docker run --name dodreemuserservice -d -p 8081:80'
                echo 'deploying the application... END !!!'
            }
        }
    }
}

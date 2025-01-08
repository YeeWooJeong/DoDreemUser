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
                echo 'docker image build...'
                sh 'docker build --tag dodreemuserservice:1.0 .'
            }
        }
        stage('deploy') {
            steps {
                sh 'nohup docker run -d -p 8081:80 --name dodreemuserservice:1.0 &'
                echo 'deploying the application... END !!! '
            }
        }
    }
}

pipeline {
    agent any
    tools {
        echo "nodejs 툴을 node16.17.0 이라고 등록한 걸 사용 한다."
        nodejs 'Nodejs16.17.0'
    }
    stages {
        stage('build') {
            steps {
                echo 'building the application... START !!!'
                sh 'pwd'
                sh "npm run build"
            }
        }
        stage('test') {
            steps {
                echo 'testing the application...'
            }
        }
        stage('deploy') {
            steps {
                echo 'deploying the application... END !!!'
            }
        }
    }
}

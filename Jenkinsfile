pipeline {
    agent {
        dockerfile true
    }
    stages {
        stage('Build') { 
            steps {
                sh 'python -m py_compile sources/add2vals.py sources/calc.py' 
                stash(name: 'compiled-results', includes: 'sources/*.py*') 
            }
        }
        stage('Test') {
            steps {
                sh 'py.test --junit-xml test-reports/results.xml sources/test_calc.py'
                sh 'cat test-reports/results.xml'
            }
            post {
                always {
                    junit 'test-reports/results.xml'
                }
            }
        }
    }
}
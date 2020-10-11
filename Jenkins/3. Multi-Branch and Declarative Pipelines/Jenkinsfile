node('master') {
    stage("Fetch Source Code") {
        git 'https://github.com/VMWare-Training-Oct2020/VMWare-Devops-Training-Oct2020.git'
    }
    
    dir('Jenkins/3. Multi-Branch and Declarative Pipelines') {
        printMessage('Running Pipeline')
        stage("Testing") {
            sh 'python test_functions.py'
        }
        stage("Deployment") {
            if (env.BRANCH_NAME == 'master') {
                printMessage('Deploying the master branch')
            } else {
                printMessage("No deployment for branch [${env.BRANCH_NAME}]")
            }
            
        }
        printMessage('Pipeline Complete')
    }
}

def printMessage(message) {
    echo "${message}"
}

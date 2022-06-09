pipelineJob('my-pipeline') {
    definition {
        cpsScm {
            lightweight(lightweight=true)
            scm {
                git {
                    branches {
                        branchSpec {
                            name("main")
                        }
                    }
                    gitTool('')
                    browser{
                        githubWeb {
                            repoUrl("https://github.com/VeronicaLil/TF-pipeline")
                        }
                    }
                }
            }
            scriptPath('Jenkinsfile')
        }   
    }
}
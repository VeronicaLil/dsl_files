pipelineJob('my-pipeline') {
    definition {
        cpsScm {
			scm {
                gitSCM {
                    // Specify the repository to track.
                    userRemoteConfigs {
                        userRemoteConfig {
                            // Specify the URL of this remote repository.
                            url("https://github.com/VeronicaLil/TF-pipeline")
                            // ID of the repository, such as origin, to uniquely identify this repository among other remote repositories.
                            name("")
                            // A refspec controls the remote refs to be retrieved and how they map to local refs.
                            refspec("+refs/heads/main:refs/remotes/origin/main")
                            credentialsId("Github_Bot_Token")
                        }
                    }
                    branches {
                        branchSpec {
                            // Specify the branches if you'd like to track a specific branch in a repository.
                            name("main")
                        }
                    }
                    doGenerateSubmoduleConfigurations(true)
                    gitTool('')
                    browser{
                        githubWeb {
                            // Specify the HTTP URL for this repository's GitHub page (such as https://github.com/jquery/jquery).
                            repoUrl("https://github.com/VeronicaLil/TF-pipeline")
                        }
                    }
                }
			}
			scriptPath("Jenkinsfile")
		}   
    }
}

# capstone-cloud-devops-engineer

## Pipeline:

lint (python code and dockerfile) -> build docker image, push -> deploy infrastructure -> configure infra -> deploy application (k8s) 
-> smoke test -> switch to new version -> clean up (terminate old cloudformation stack)


infra:

iam role for eks
vpc

# aws-flask-deployment

## Tasks
- [ ] create a postgres db
    - initialize the table structure with `bus_app.sql`
    - populate the table with `bus_app.csv`
- [ ] containerize the application


## Deployment

### AWS 
- [ ] RDS: smallest possible postgres db, (this is expensive, stop the db or delete it when you're not using it)
- [ ] Tight security group rules
- [ ] You may use the default vpc, but it's better to create your own vpc and subnets
    - public subnet: for the app
- [ ] ECR: push your images to ecr
- [ ] ECS: 1 container ECS Service
- [ ] SSM Parameter Store: store db credentials here and use it in ECS Task Definition
    - you can use the String one, and not the SecureString one (for ECS Task Definition)
- [ ] terraform
    - [ ] create `terraform/` folder and make one command aws deployment possible
    - [ ] module usage is allowed only for vpc, everything else should be written by you



### Kubernetes (minikube) 
- create a postgres deployment    
    - either create your own postgres db container using the .sql and .csv
    - or do every customization with Env Vars and volume mounting
- postgres should have persistent storage
- create the app deployment, service
- helm
    - create a helm chart for the app
    - one command installation

## Acceptance Criteria

- [ ] The application is containerized
- [ ] /people -> lists all 
- [ ] /people/id -> gets one 
- [ ] delete a person and see it's being removed from /people list 
- [ ] multi-stage docker builds
- [ ] usage of gunicorn



#### Optional
- [ ] using a better packaging tool than pip, e.g. poetry, pipenv
# aws

# Django and heroku on docker 
You can use Django and heroku using docker desktop.  
Mainly for M1 Mac users.

## Quick Start
1. clone to your PC
1. `cd docker_django_heroku`
1. `docker-compose run web django-admin.py startproject {Project Name} .`
1. `docker-compose up`
1. enter `127.0.0.1:8000` on your browser

## Memo
### Enter web of docker container
1. `docker-compose up -d`
1. `docker-compose exec web bash`

### Command from CLI on PC
- `docker-compose run web python3 manage.py startapp {Application Name}`
- `docker-compose run web python3 manage.py makemigrations`

### Close docker
`docker-compose down`

### Connect heroku
`heroku login --interactive`

### TODO heroku
- Change log_history location of heroku
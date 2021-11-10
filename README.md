# Django and heroku on docker 
You can use Django and heroku using docker desktop.  
Mainly for M1 Mac users.

If you do not use heroku, you can change main image from node to python.

## Quick Start
1. clone to your PC
1. `cd docker_django_heroku`
1. `docker-compose run web django-admin.py startproject {Project Name} .`
1. `docker-compose up`
1. enter `127.0.0.1:8000` on your browser

## Memo
### Command from CLI on PC
- `docker-compose run web python3 manage.py startapp {Application Name}`
- `docker-compose run web python3 manage.py makemigrations`
- `docker-compose run web python3 manage.py migrate`

### Enter "services: web"
1. `docker-compose up -d`
1. `docker-compose exec web bash`

### Close docker
`docker-compose down`

### Connect heroku
`heroku login --interactive`

## Reference Article
- [クィックスタート: Compose と Django](https://docs.docker.jp/compose/django.html)
- [djangoとpostgresqlをDockerで接続しようとしたときに「django.db.utils.OperationalError: could not translate host name "db" to address: Name or service not known」というエラーが出る](https://qiita.com/takos/items/c04ac2a64d519894ee13)
- [Heroku CLI](https://devcenter.heroku.com/ja/articles/heroku-cli)
- [Django x Docker to Production on Heroku](https://www.codingforentrepreneurs.com/blog/django-docker-production-heroku/)

## TODO  
### heroku
- Change log_history location of heroku

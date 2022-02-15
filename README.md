# Task manager
[![Actions Status](https://github.com/i1yas/python-project-lvl4/workflows/hexlet-check/badge.svg)](https://github.com/i1yas/python-project-lvl4/actions)

[ilyas-pyproject.herokuapp.com](https://ilyas-pyproject.herokuapp.com/)

## Deploy for first time
```bash
# Creating app on heroku
heroku create <app-name>

# Add buildpacks to run poetry project
heroku buildpacks:clear
heroku buildpacks:add https://github.com/moneymeets/python-poetry-buildpack.git
heroku buildpacks:add heroku/python

# Add database on heroku
# it will set DATABASE_URL env variable for you
heroku addons:create heroku-postgresql:hobby-dev --name=<app-name>-pg

# Set env
heroku config:set DJANGO_SECRET_KEY=<generated_secret_key>
heroku config:set ALLOWED_HOSTS='["your-domain"]'

# Deploy
git push heroku
```
install:
	poetry install

start-dev:
	poetry run python manage.py runserver

start-prod:
	DJANGO_SETTINGS_MODULE=task_manager.settings \
	poetry run gunicorn task_manager.wsgi

start-on-heroku:
	DJANGO_SETTINGS_MODULE=task_manager.settings \
	gunicorn task_manager.wsgi --log-file -

deploy:
	git push heroku main

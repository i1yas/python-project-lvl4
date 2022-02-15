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

makemessages:
	poetry run python manage.py makemessages -l ru
compilemessages:
	poetry run python manage.py compilemessages -l ru

deploy:
	git push heroku main

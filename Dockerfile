FROM python:3.8

RUN mkdir -p /opt/services/djangoapp/src 
WORKDIR /opt/services/djangoapp/src

RUN pip install gunicorn django

COPY . /opt/services/django/src

EXPOSE 8000

CMD ["gunicorn", "--chdir", "testapp", "--bind", ":8000", "testapp.wsgi:application"]
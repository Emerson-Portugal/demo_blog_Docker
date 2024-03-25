FROM python:3.9
ENV PYTHONUNBUFFERED 1
WORKDIR /app
COPY requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt
COPY . /app
CMD python manage.py runserver 0.0.0.0:8000

##CMD python manage.py runserver --settings=yourproject.settings_production 0.0.0.0:8000
## Asegúrate de reemplazar yourproject.settings_production con la ruta adecuada a tu archivo de configuración de producción.
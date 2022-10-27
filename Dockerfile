FROM python:3.11-alpine3.16
WORKDIR /code

RUN apk add binutils proj-dev geos gdal gdal-dev build-base
RUN export GDAL_LIBRARY_PATH=/usr/lib/libgdal.so
#RUN export GDAL_LIBRARY_PATH='/usr/lib/libgdal.so.20'

RUN ln -s /usr/lib/libgeos_c.so.1 /usr/lib/libgeos_c.so

COPY ./requirements.txt /code/requirements.txt
RUN pip install -r /code/requirements.txt
COPY . .
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
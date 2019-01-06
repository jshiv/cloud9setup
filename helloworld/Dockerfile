FROM python:3.6
COPY . /src
COPY ./rest /src/rest
WORKDIR /src
RUN pip install -r /src/requirements.txt
CMD ["gunicorn", "--bind=0.0.0.0:8080","--workers=4", "rest.app:app"]

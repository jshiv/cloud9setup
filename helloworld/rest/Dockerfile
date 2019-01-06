FROM python:3.6
COPY . /src
WORKDIR /src
RUN pip install -r /src/requirements.txt
CMD ["gunicorn", "--bind=0.0.0.0","--workers=4", "rest.app:app"]

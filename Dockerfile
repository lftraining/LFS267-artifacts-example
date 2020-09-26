FROM python:3.7.8-alpine 

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app
WORKDIR /app


ENTRYPOINT [ "python" ]

CMD [ "app.py" ]

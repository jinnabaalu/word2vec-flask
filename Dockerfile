FROM python:3.8

LABEL Maintainer="Jinna Balu"
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY ./model.py .
COPY ./manage.py .
COPY GoogleNews-vectors-negative300.magnitude .

CMD [ "python", "./manage.py" ]
FROM python:3

MAINTAINER devops0123@gmail.com

WORKDIR /app

COPY requirements.txt ./

RUN python3 -m pip install virtualenv && python3 -m virtualenv $USERNAME &&virtualenv env

RUN sh env/bin/active

RUN pip install --no-cache-dir -r requirements.txt

COPY . ./

CMD ["python", "manage.py", "runserver"]
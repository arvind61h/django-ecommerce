FROM python:3

MAINTAINER devops0123@gmail.com

WORKDIR /app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY . ./

CMD ["python", "manage.py", "runserver"]
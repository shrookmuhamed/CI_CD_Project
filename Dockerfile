FROM ubuntu:latest
RUN apt-get update && \
    apt-get install -y python3.6 python3-pip
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
RUN python3.6 manage.py makemigrations
RUN python3.6 manage.py migrate



EXPOSE 8000

CMD ["python" , "manage.py" , "runserver" , "0.0.0.0:8000"]

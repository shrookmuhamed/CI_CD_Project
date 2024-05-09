FROM python:latest
WORKDIR /app
COPY . /app
RUN pip3 install -vvv -r requirements.txt
RUN python3.6 manage.py makemigrations
RUN python3.6 manage.py migrate



EXPOSE 8000

CMD ["python" , "manage.py" , "runserver" , "0.0.0.0:8000"]

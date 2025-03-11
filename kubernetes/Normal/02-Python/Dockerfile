FROM tjshake/foosball-flask:0.1.0

ENV MYSQL_HOST \
    MYSQL_USER \ 
    MYSQL_PASSWORD \
    MYSQL_DB


   # mysql_user=flaskuser  \
   # mysql_password=my-secret-pw  \
   # mysql_db=flaskapp    

RUN mkdir -p /home/app
COPY . /home/app
CMD ["python", "/home/app/app.py"]

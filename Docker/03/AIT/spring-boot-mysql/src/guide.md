_________________________________ASHOK IT 3-Tier Spring Boot Java APP with MYSQL_____________________________________________


https://github.com/ashokitschool/spring-boot-mysql.git

goto src/main/resources/application.yml (Clearly observe the properties)


- Run the following commands
    
       cd spring-boot-mysql

       docker run --rm --name maven-cont -v $(pwd):/java-proj  -w /java-proj maven:3.8.1-openjdk-8 mvn clean install package -DskipTests=true

       mvn clean package -DskipTests=true

       docker build -t spring-img .

- Create docker network called 'spring' as follows
       docker network create spring

- Create a Mysql docker container as follows 
       docker run -d --name mysql --network spring -p 3306:3306  -e MYSQL_ROOT_USER=root -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=sbms mysql:5.7
                                      (or)
       docker run -d --name mysql --network spring -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root -e MYSQL_USER=sbms -e MYSQL_PASSWORD=sbms -e MYSQL_DATABASE=sbms mysql:5.7                                     

- Create a Spring Boot  docker container as follows 
       docker run -d --name spring --network spring -p 8080:8080 -e DB_HOST=mysql spring-img
                                         (or)
       docker run -d --name spring --network spring -p 8080:8080 -e DB_HOST=mysql -e DB_USERNAME=sbms -e DB_PASSWORD=sbms -e DB_NAME=sbms spring-img

Note: DB_HOST is an environment variable which the spring boot application expects and it allows many other environment variables, check "src/main/resources/application.yml" and provide them

- Check the data in mysql container using the following command

       docker exec -it mysql mysql -uroot -proot sbms -e "select * from book"
                                    (or)
       docker exec -it mysql mysql -usbms -psbms sbms -e "select * from book"




       

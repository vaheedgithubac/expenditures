* Project Tech Stack:

      - Java:8
      - Mysql:8.0
  
* Application Port - 8080

* First you need to create a .JAR file using following command
  
      cd product-manager/
      docker run --rm --name maven-cont -v $(pwd):/java-proj  -w /java-proj maven:3.8.1-openjdk-8 mvn clean install package -DskipTests=true

* This App takes input parameters as follows 

      DB_HOST    
      DB_NAME
      DB_PORT  (optional, 3306 set as default)
      DB_USERNAME
      DB_PASSWORD

* Application running with Docker
      # create network

         docker network create product
  
      docker build -t mysql-img -f Dockerfile-mysql .
      docker build -t product-img -f Dockerfile-product .

      docker run -d --name mysql --network product -e MYSQL_ROOT_PASSWORD=root mysql-img
  
      docker run -d --name product --network product -p 8080:8080 -e DB_HOST=mysql -e DB_NAME=product -e DB_USERNAME=product -e DB_PASSWORD=product product-img
  
  
* Very Important Note:  
      
      You need to remove/delete volumes associated to mysql containers if you have any to initialize the init-db script 

* Project Tech Stack:

      - Java:8
      - Mysql:8.0

* First you need to create a .WAR file using following command
  
      cd product-manager/
      docker run --rm --name maven-cont -v $(pwd):/java-proj  -w /java-proj maven:3.8.1-openjdk-8 mvn clean install package -DskipTests=true

* This App takes input parameters as follows 

      DB_HOST    
      DB_NAME
      DB_PORT  (optional, 3306 set as default)
      DB_USERNAME
      DB_PASSWORD
  
* Very Important Note:  
      
      You need to remove/delete volumes associated to mysql containers if you have any to initialize the init-db script 

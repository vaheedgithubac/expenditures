* Project Tech Stack:

      - Java:8
      - Tomcat:8.5
      - Mysql:5.7.28

* First you need to create a .WAR file using following command
  
      cd login-web-app/
      docker run --rm --name maven-cont -v $(pwd):/java-proj  -w /java-proj maven:3.8.1-openjdk-8 mvn clean install package -DskipTests=true

* This App takes input parameters as follows and are hardcoded in the application code

      Connection con = DriverManager.getConnection("jdbc:mysql://mysql:3306/devopsclass?useSSL=false", "login", "login");
    
      DB host - mysql, DB port - 3006, DB name - devopsclass, DB user - login, DB password - login

      #!/bin/bash

      echo '============================================================='
      echo '$                                                           $'
      echo '$                      liumapp                              $'
      echo '$                                                           $'
      echo '$                                                           $'
      echo '$  email:    liumapp.com@gmail.com                          $'
      echo '$  homePage: http://www.liumapp.com                         $'
      echo '$  Github:   https://github.com/liumapp                     $'
      echo '$                                                           $'
      echo '============================================================='
      echo '.'

      # if you have engine project . plz add
      #cd ${your engine path}
      #mvn clean install
      cd sign-online-engine

      mvn clean install -Dmaven.test.skip=true

      cd ..

      cd sign-online-eureka

      mvn clean package -DskipTests=true docker:build

      cd ..

      cd sign-online-config-server

      mvn clean package -DskipTests=true docker:build

      cd ..

      cd sign-online-gateway

      mvn clean package -DskipTests=true docker:build

      cd ..

      cd sign-online-service/admin-api


      cd ..

      cd ..

      cd sign-online-service/business

      mvn clean package -DskipTests=true docker:build

      cd ..

      cd ..

      cd sign-online-service/company-api

      mvn clean

      mvn clean package -DskipTests=true docker:build

      cd ..

      cd ..


      cd sign-online-service/personal-api

      mvn clean

      mvn clean package  -DskipTests=true docker:build

      cd ..

      cd ..


      cd sign-online-service/sign-service

      mvn clean

      mvn clean package -DskipTests=true docker:build

      cd ..

      cd ..

      cd sign-online-service/tianwei-cert-service

      mvn clean

      mvn clean package -DskipTests=true docker:build

      cd ..

      cd ..


      cd sign-online-service/token-manager


      mvn clean package -DskipTests=true docker:build

      cd ..

      cd ..

      cd sign-online-service/websocket-server

      mvn clean

      mvn clean package -DskipTests=true docker:build

      cd ..

      cd ..








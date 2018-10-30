    #!/bin/bash

    cd eureka-server

    mvn clean install -Dmaven.test.skip=true docker:build

    cd ..

    cd client-server

    mvn clean install -Dmaven.test.skip=true docker:build

    cd ..
    cd ..
#!/bin/bash
echo This is a container to build swagger node project
echo Official documentation : https://github.com/swagger-api/swagger-node
echo ==============================================================================
echo == Project initialization
echo cd WORKSPACE
echo docker run -v \$PWD:/app:Z --rm -it tools/swagger  swagger project create PROJECT-NAME
echo ==============================================================================
echo == Running the project
echo cd PROJECT-NAME
echo docker run -v \$PWD:/app:Z --rm -it --name PROJECT-NAME  tools/swagger npm install
echo docker run -v \$PWD:/app:Z --rm -it --name PROJECT-NAME  tools/swagger swagger project start
echo docker run -v \$PWD:/app:Z --rm -it --name PROJECT-NAME  tools/swagger swagger project edit -s --host 0.0.0.0 -p 9000
echo docker exec -it PROJECT-NAME swagger project edit -s --host 0.0.0.0 -p 9000
echo docker exec -it PROJECT-NAME /bin/bash
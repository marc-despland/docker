#!/bin/bash
echo This is a container to build angular2 TS project using angular-cli
echo Official documentation : https://github.com/angular/angular-cli
echo ==============================================================================
echo == Project initialization
echo cd WORKSPACE
echo docker run -v \$PWD:/app:Z --rm tools/angular-cli ng new PROJECT-NAME
echo ==============================================================================
echo == Running the project
echo cd PROJECT-NAME
echo docker run -v \$PWD:/app:Z --rm -it --name PROJECT-NAME tools/angular-cli ng serve
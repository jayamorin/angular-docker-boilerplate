# Angular 4.0 Docker Boilerplate

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

This project was generated with [Angular CLI](https://github.com/angular/angular-cli) version 1.3.1.

## Install requirements
1. Install Node.js.
```
$ curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
$ sudo apt-get install nodejs
```

2. Install Angular CLI.
```
$ sudo npm install -g @angular/cli
```

3. Install Docker Community Edition. Refer to [Docker CE for Ubuntu](https://store.docker.com/editions/community/docker-ce-server-ubuntu).

## Getting started
```
$ git clone https://github.com/jayamorin/angular-docker-boilerplate.git myapp
$ ng new myapp
$ cd myapp
```

## Build the docker image for production
```
$ docker build -t myapp:0.1 .
```

## Run the container
```
$ docker run -it -d -p 8080:80 myapp:0.1
```
The app will be available at `http://localhost:8080/`

![](http://i.imgur.com/8U2vAsA.png)

## Development server

Run `ng serve` for a dev server. Navigate to `http://localhost:4200/`. The app will automatically reload if you change any of the source files.

## Code scaffolding

Run `ng generate component component-name` to generate a new component. You can also use `ng generate directive|pipe|service|class|guard|interface|enum|module`.

## Build

Run `ng build` to build the project. The build artifacts will be stored in the `dist/` directory. Use the `-prod` flag for a production build.

## Running unit tests

Run `ng test` to execute the unit tests via [Karma](https://karma-runner.github.io).

## Running end-to-end tests

Run `ng e2e` to execute the end-to-end tests via [Protractor](http://www.protractortest.org/).
Before running the tests make sure you are serving the app via `ng serve`.

## Further help

To get more help on the Angular CLI use `ng help` or go check out the [Angular CLI README](https://github.com/angular/angular-cli/blob/master/README.md).

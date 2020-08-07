# Stryv

## How to deploy the server
In this example we use the postgres image from dockerhub and package our flask app in a container. In order to deploy Stryv, follow these steps:

Clone the github repository on a server via

```
git clone https://github.com/BookOBenji/cs0060-final-project-stryvr.git

```

Build a docker image in the directory of the repository via

```
docker build -t login:latest .
```

In the directory that contains the docker-compose.yml file, run

```
mkdir db-data/
DATA_DIR=[path to...]/db-data && docker-compose up -d
```

Create the database via

```
docker exec -it [login:latest container ID] bash
flask shell
>> from login import db
>> db.create_all()
>> exit()

```
Stryv 1.0 should now be up and running!

## Organisation

The organisation of our app is as follows:
```
/cs00600-final-project-stryvr
    /stryv
        stryv.py
        /static
            /css
                style.css
            /js
                main_scripts.js
        /templates
            main.html
```

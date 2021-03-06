# Striver

## Steps to launch server and database locally:

1. In a shell

```bash
conda env create -f environment.yml
```

```sql
psql postgres
CREATE DATABASE striver;
\list
\connect striver
\q
```

```python
python3
>> from striver import db
>> db.create_all()
>> exit()
```

```bash
./run.sh
```

## How to deploy the server using docker container
In this example I use the postgres image from dockerhub and package our flask app in a container. In order to deploy Striver, follow these steps:

Clone the github repository on a server.

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
Striver 1.0 should now be up and running!

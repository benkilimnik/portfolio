#!/usr/bin/env bash

export APP_SECRET=`openssl rand -base64 32`
export FLASK_APP=striver 
export FLASK_ENV=development
flask run

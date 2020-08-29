from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_bootstrap import Bootstrap
import os

app = Flask(__name__)

# # For development
#app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://localhost/striver'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False # event notification system

# For heroku deployment
heroku = Heroku(app)

# # For deployment:
# # app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://postgres:docker@localhost/postgres'
#assert 'APP_SECRET' in os.environ, 'need to set APP_SECRET environ variable.'
app.config['SECRET_KEY'] = 'dev' #os.environ['APP_SECRET']
db = SQLAlchemy(app)

Bootstrap(app)

from .views import * # needs to be at the end after flask app is defined

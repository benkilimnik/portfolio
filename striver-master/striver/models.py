from striver import db
from flask_login import LoginManager, login_required, login_user, logout_user, current_user, UserMixin
from sqlalchemy import *
from werkzeug.security import generate_password_hash, check_password_hash

class Association(db.Model):
    __tablename__ = 'association'
    user_id = db.Column(db.Integer(),db.ForeignKey('login_table.id'),primary_key=True)
    goal_id = db.Column(db.Integer(),db.ForeignKey('goal_table.id'),primary_key=True)
    goal_title = db.Column(db.String(64), unique=True, index=True)
    goal_description= db.Column(db.String(1024), unique=True, index=True)
    status = db.Column(db.Boolean(),default=True,nullable=False)
    #child = db.relationship("Goals",back_populates="parents")
    #parent = db.relationship("User",back_populates="children")

class User(UserMixin, db.Model):

    __tablename__ = 'login_table'

    id = db.Column(db.Integer(), primary_key=True)
    username = db.Column(db.String(64), unique=True, index=True)
    email = db.Column(db.String(64), unique=True, index=True)
    password_hash = db.Column(db.String(128))

    @property
    def password(self):
        raise AttributeError('password is write-only')
    @password.setter
    def password(self, password):
        self.password_hash = generate_password_hash(password)

    def verify_password(self, password):
        return check_password_hash(self.password_hash, password)


class Goals(db.Model):

    __tablename__ = 'goal_table'

    id = db.Column(db.Integer(), primary_key=True)
    title = db.Column(db.String(64), unique=True, index=True)
    description = db.Column(db.String(1024), unique=True, index=True)
#    date_created = db.Column(db.Integer())
    #parents = db.relationship("Association", back_populates="child")

def create_user(username, email, password_hash):
    inserted_user = User(username = username, email = email, password = password_hash)
    db.session.add(inserted_user)
    db.session.commit()

def create_challenge(title, description):
    inserted_challenge = Goals(title = title, description = description)
    db.session.add(inserted_challenge)
    db.session.commit()

def checkout_challenge(goal_title):
    user = str(current_user)[5:]
    user_id_num= user[:-1]
    all_goals = list(Goals.query.all())
    user = User.query.filter_by(id=user_id_num).first()

    print("THE GOAL TITLE IS::::::::", goal_title)

    g = Goals.query.filter_by(title=goal_title).first()

    print("THIS IS g::::::", g)
    new_object = Association(user_id = user_id_num,goal_id  = g.id, goal_title = g.title, goal_description = g.description)
    db.session.add(new_object)
    db.session.commit()

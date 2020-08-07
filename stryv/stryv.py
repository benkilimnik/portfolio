import os
from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_login import LoginManager, login_required, login_user, logout_user, current_user, UserMixin
from flask import render_template, redirect, request, url_for, flash
import time
from sqlalchemy import *
from sqlalchemy.orm import relationship
from flask_wtf import FlaskForm
from wtforms import StringField, PasswordField, BooleanField, SubmitField
from wtforms.validators import DataRequired, Length, Email

from flask_bootstrap import Bootstrap

from werkzeug.security import generate_password_hash, check_password_hash

class LoginForm(FlaskForm):

#    username = StringField('Username', validators=[DataRequired()])
    email = StringField('Email', validators=[DataRequired(), Length(1, 64), Email()])
    password = PasswordField('Password', validators=[DataRequired()])
    remember_me = BooleanField('Keep me logged in')
    submit = SubmitField('Login')

class SignUpForm(FlaskForm):

    username = StringField('Username', validators=[DataRequired()])
    email = StringField('Email', validators=[DataRequired(), Length(1, 64), Email()])
    password = PasswordField('Password', validators=[DataRequired()])
    remember_me = BooleanField('Keep me logged in')
    submit = SubmitField('Sign Up')

class RedirectAddChallengeButton(FlaskForm):

    submit = SubmitField('Add Challenge')

class AddChallengeForm(FlaskForm):

    title = StringField('title', validators=[DataRequired()])
    description = StringField('description', validators=[DataRequired(), Length(1, 1024)])
    submit = SubmitField('Add Challenge')

# make sure app secret exists
# generate i.e. via openssl rand -base64 32
#assert 'APP_SECRET' in os.environ, 'need to set APP_SECRET environ variable.'

app = Flask(__name__)

app.config['SECRET_KEY'] = 'blah'
app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://stryv:stryv@localhost:5432/stryv_db'

#app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
#app.config['SQLALCHEMY_DATABASE_URI'] = os.environ["DBURI"]
#app.config['SECRET_KEY'] = 'blah' #os.environ['APP_SECRET']
db = SQLAlchemy(app)

Bootstrap(app)

login_manager = LoginManager(app)
login_manager.login_view = 'login' # route or function where login occurs...

# association_table = db.Table('association',MetaData(),
#     db.Column('user_id', db.Integer(), ForeignKey('login_table.id')),
#     db.Column('goal_id', db.Integer(), ForeignKey('goal_table.id'))
#     )

     
class Association(db.Model):
    __tablename__ = 'association'
    user_id = db.Column(db.Integer(),db.ForeignKey('login_table.id'),primary_key=True)
    goal_id = db.Column(db.Integer(),db.ForeignKey('goal_table.id'),primary_key=True)
    status = db.Column(db.Boolean(),default=True,nullable=False)
    child = db.relationship("Goals",back_populates="parents")
    parent = db.relationship("User",back_populates="children")

# create model
class User(UserMixin, db.Model):

    __tablename__ = 'login_table'

    id = db.Column(db.Integer(), primary_key=True)
    username = db.Column(db.String(64), unique=True, index=True)
    email = db.Column(db.String(64), unique=True, index=True)
    password_hash = db.Column(db.String(128))
    children = db.relationship("Association", back_populates="parent")

    #goals = association_proxy('goals
    
    #Goals = association_proxy('
    
    # def __init__(self, username = , email = , password_hash

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
    parents = db.relationship("Association", back_populates="child")

#with app.app_context():
#    db.create_all()


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
   # checked_out_challenge = Check(i
   # need to extract goal ID on create challenge form


    user.children.append(g) # extend(g) 

    db.session.add(user)
    db.session.commit()

@app.route('/')
@login_required
def index():
    return 'Hello world'

@app.route('/login', methods=['GET', 'POST'])
def login():

    form1 = LoginForm()

    if form1.validate_on_submit():
        user = User.query.filter_by(email=form1.email.data).first()
        if user is not None and user.verify_password(form1.password.data):
            login_user(user, form1.remember_me.data)
            return redirect(url_for('arena'))
        flash('invalid username or password.')

    form2 = SignUpForm()

    if form2.validate_on_submit():
        user = User.query.filter_by(email=form2.email.data).first()
        if user is not None:
            if user.verify_password(form2.password.data):
                login_user(user, form2.remember_me.data)
                return redirect(url_for('arena'))
            flash('invalid username or password.')

        else:
            create_user(form2.username.data, form2.email.data, form2.password.data)
            user = User.query.filter_by(email=form2.email.data).first()
            if user is not None:
                if user.verify_password(form2.password.data):
                    login_user(user, form2.remember_me.data)
                    return redirect(url_for('arena'))
                flash('Sorry, an account with that username or email already exists.')

    return render_template('login.html', form1=form1, form2=form2)


@app.route('/logout')
@login_required
def logout():
    logout_user()
    flash('You have been logged out')
    return redirect(url_for('index'))

@login_manager.user_loader
def load_user(user_id):
    return User.query.get(int(user_id))

@app.route('/myProfile')
@login_required
def myProfile():
    ## completed = request.form['value']

    #This will get the id number of the current user
    user = str(current_user)[5:]
    user_id_num= user[:-1]
    user = User.query.filter_by(id=user_id_num).first()
    #this below will get a list of all the goals that belong to the user
    my_goals = list(user.goals)

    return render_template('profile.html', challenges = my_goals)

@app.route('/myCompletedChallenge', methods=['GET', 'POST'])
@login_required
def myCompletedChallenge():
    #will retrieve the information when the make complete button is clicked
    if request.method == "POST":
        #will get the name of the challenge that needs the status fixed. The value word may have to be fixed.
        title = request.form['value']
        #will get the whole row of the goal that the name belongs to
        goal_row= Goals.query.filter_by(title=title)
        #Will update the status of the current row in the association table for the status boolean using the user_id filter
        #and the goal_id value
        goal = Association.query.filter_by(user_id = user_id_num,goal_id=goal_row.id).update({"status":False})
        #render the template regardless of what happens to currently show the goals that belong to the user

    return redirect('/myProfile', challenges = my_goals)

@app.route('/arena', methods=['GET', 'POST'])
@login_required
def arena():

    # extracts user ID from table:
    user = str(current_user)[5:]
    user_id_num= user[:-1]
    all_goals = list(Goals.query.all())
    user = User.query.filter_by(id=user_id_num).first()

    form = RedirectAddChallengeButton()
    if form.validate_on_submit():
        return redirect(url_for('add_challenge_page'))

    return render_template('challenge_page.html', form = form, challenges=all_goals, user=user)

@app.route('/checkoutChallenge', methods=['GET', 'POST'])
def checkout_challenge_pending():
    print("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA")
    print(request.form)
    title = request.form['value']
    checkout_challenge(title)

    return redirect('/arena')

@app.route('/addChallenge', methods=['GET', 'POST'])
@login_required
def add_challenge_page():
    form = AddChallengeForm()
    if form.validate_on_submit():
        create_challenge(form.title.data, form.description.data)
        return redirect(url_for('arena'))
    return render_template('add_challenge.html', form = form)

if __name__ == '__main__':
    app.run(debug=True)

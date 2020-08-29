from flask import render_template, redirect, request, url_for, flash
from striver import app

from flask_login import LoginManager, login_user, logout_user, current_user, login_required, UserMixin
from werkzeug.security import generate_password_hash, check_password_hash

from .models import *
from .forms import *

login_manager = LoginManager(app)
login_manager.login_view = 'login'

@app.route('/')
@login_required
def index():
    return render_template('index.html')

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

@app.route('/myProfile')
@login_required
def myProfile():

    #This will get the id number of the current user
    user = str(current_user)[5:]
    user_id_num= user[:-1]
    user = User.query.filter_by(id=user_id_num).first()
    all_the_things = Association.query.filter_by(user_id = user_id_num)
    #this below will get a list of all the goals that belong to the user
    my_goals = list(all_the_things)
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

@app.route('/checkoutChallenge', methods=['GET', 'POST'])
def checkout_challenge_pending():
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
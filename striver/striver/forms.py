from flask_wtf import FlaskForm
from wtforms import StringField, PasswordField, BooleanField, SubmitField
from wtforms.validators import DataRequired, Length, Email

class LoginForm(FlaskForm):

#   username = StringField('Username', validators=[DataRequired()])
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
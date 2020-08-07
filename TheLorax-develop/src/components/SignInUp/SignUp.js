import React from "react"
import { Link } from "react-router-dom"

import SignInUpForm from "./SignInUpForm"
import { notification } from "antd"

import generateSignUpSchema from "../../functions/signUpSchema"
import { withFirebase } from "../Firebase/Firebase"
import * as ROUTES from "../../constants/routes"

const SignUpPage = ({ firebase, history }) => {
  const submitSignUp = (username, email, password) => {
    return firebase
      .signUpCreateUser(username, email, password)
      .then(() => {
        history.push(ROUTES.SURVEY)
      })
      .catch(error => {
        throw error
      })
  }

  const openErrorNotification = (code, details) => {
    notification["error"]({
      message: code,
      description: details
    })
  }

  return (
    <SignInUpForm
      type="up"
      submit={submitSignUp}
      validationSchema={generateSignUpSchema()}
      openErrorNotification={openErrorNotification}
    />
  )
}

const SignUpLink = () => (
  <p>
    Don't have an account? <Link to={ROUTES.SIGN_UP}>Sign Up</Link>
  </p>
)

export default withFirebase(SignUpPage)
export { SignUpLink }

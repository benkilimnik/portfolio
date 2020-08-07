import React from "react"
import { Link } from "react-router-dom"

import SignInUpForm from "./SignInUpForm"

import { openErrorNotification } from "../Notifications"
import generateSignInSchema from "../../functions/signInSchema"
import { withFirebase } from "../Firebase/Firebase"
import * as ROUTES from "../../constants/routes"

const SignInPage = ({ firebase, history }) => {
  const submitSignIn = (username, email, group_code) => {
    return firebase.signIn(email, group_code).then(() => {
      firebase.isAdmin(isAdmin => {
        isAdmin ? history.push(ROUTES.ADMIN) : history.push(ROUTES.SURVEY)
      })
    })
  }

  return (
    <SignInUpForm
      type="in"
      submit={submitSignIn}
      validationSchema={generateSignInSchema()}
      openErrorNotification={openErrorNotification}
    />
  )
}

const SignInLink = () => (
  <p>
    Already have an account? <Link to={ROUTES.SIGN_IN}>Sign In</Link>
  </p>
)

export default withFirebase(SignInPage)

export { SignInLink }

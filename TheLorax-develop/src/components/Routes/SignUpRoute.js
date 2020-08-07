import React from "react"

import SignUpPage from "../SignInUp/SignUp"
import AlreadySignedInPage from "../BlockPages/AlreadySignedIn"

const SignUpRoute = props => {
  const { authUser } = props
  return authUser ? (
    <AlreadySignedInPage {...props} />
  ) : (
    <SignUpPage {...props} />
  )
}

export default SignUpRoute

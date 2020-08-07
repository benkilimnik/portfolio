import React from "react"

import AlreadySignedInPage from "../BlockPages/AlreadySignedIn"
import SignInPage from "../SignInUp/SignIn"

const SignInRoute = props => {
  const { authUser } = props
  return authUser ? (
    <AlreadySignedInPage {...props} />
  ) : (
    <SignInPage {...props} />
  )
}

export default SignInRoute

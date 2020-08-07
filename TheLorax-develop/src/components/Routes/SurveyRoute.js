import React from "react"

import SurveyPage from "../Survey/Survey"
import DoneSurveyPage from "../BlockPages/DoneSurvey"
import SignInPage from "../SignInUp/SignIn"

const SurveyRoute = props => {
  const { authUser } = props
  const TOOK_SUR = authUser ? authUser.TOOK_SUR : null
  const VIEW_RES = authUser ? authUser.VIEW_RES : null
  return TOOK_SUR ? (
    <DoneSurveyPage VIEW_RES={VIEW_RES} {...props} />
  ) : !authUser ? (
    <SignInPage {...props} />
  ) : (
    <SurveyPage {...props} />
  )
}

export default SurveyRoute

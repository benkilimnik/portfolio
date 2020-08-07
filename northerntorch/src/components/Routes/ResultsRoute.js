import React from "react"

import ResultsPage from "../Results/Results"
import NoResultsPage from "../Results/NoResults"
import SignInPage from "../SignInUp/SignIn"

const ResultsRoute = props => {
  const { authUser } = props
  const VIEW_RES = authUser ? authUser.VIEW_RES : null
  return VIEW_RES ? (
    <ResultsPage {...props} />
  ) : !authUser ? (
    <SignInPage {...props} />
  ) : (
    <NoResultsPage {...props} />
  )
}

export default ResultsRoute

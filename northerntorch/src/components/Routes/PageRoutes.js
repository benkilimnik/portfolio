import React from "react"
import { withRouter, Route, Switch } from "react-router-dom"

import * as ROUTES from "../../constants/routes"

import {
  SignUpRoute,
  SignInRoute,
  ResultsRoute,
  SurveyRoute,
  AdminRoute,
  NotFoundRoute
} from "./Routes"

const PageRoutes = props => {
  return (
    <Switch>
      <Route path={ROUTES.SIGN_UP} render={() => <SignUpRoute {...props} />} />
      <Route
        exact
        path={ROUTES.SIGN_IN}
        render={() => <SignInRoute {...props} />}
      />
      <Route path={ROUTES.SURVEY} render={() => <SurveyRoute {...props} />} />
      <Route path={ROUTES.RESULTS} render={() => <ResultsRoute {...props} />} />
      <Route path={ROUTES.ADMIN} render={() => <AdminRoute {...props} />} />
      <Route render={() => <NotFoundRoute {...props} />} />
    </Switch>
  )
}

export default withRouter(PageRoutes)

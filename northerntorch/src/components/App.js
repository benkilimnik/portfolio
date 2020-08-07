import React, { Component } from "react"
import { BrowserRouter as Router } from "react-router-dom"
import { Layout } from "antd"

import HeaderSteps from "./HeaderSteps"
import PageRoutes from "./Routes/PageRoutes"

import { AuthUserContext, withAuthentification } from "./Session/Session"

const { Content } = Layout

class App extends Component {
  constructor(props) {
    super(props)
  }

  render() {
    return (
      <AuthUserContext.Consumer>
        {authUser => (
          <Router>
            <div className="background-style">
              <HeaderSteps authUser={authUser} />
              <Content className="content">
                <PageRoutes authUser={authUser} />
              </Content>
            </div>
            <div className="footer"> ©2019 Northern Torch</div>
          </Router>
        )}
      </AuthUserContext.Consumer>
    )
  }
}

export default withAuthentification(App)

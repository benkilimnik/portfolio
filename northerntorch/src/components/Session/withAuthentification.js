import React from "react"

import AuthUserContext from "./SessionContext"
import { withFirebase } from "../Firebase/Firebase"

const withAuthentification = Component => {
  class WithAuthentification extends React.Component {
    constructor(props) {
      super(props)

      this.state = {
        authUser: JSON.parse(sessionStorage.getItem("authUser"))
      }
    }

    componentDidMount() {
      this.listener = this.props.firebase.onAuthUserListener(
        authUser => {
          sessionStorage.setItem("authUser", JSON.stringify(authUser))
          this.setState({ authUser })
        },
        () => {
          sessionStorage.removeItem("authUser")
          this.setState({ authUser: null })
        }
      )
    }

    componentWillUnmount() {
      this.listener()
    }

    render() {
      return (
        <AuthUserContext.Provider value={this.state.authUser}>
          <Component {...this.props} />
        </AuthUserContext.Provider>
      )
    }
  }
  return withFirebase(WithAuthentification)
}

export default withAuthentification

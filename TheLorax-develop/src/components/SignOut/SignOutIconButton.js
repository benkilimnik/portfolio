import React from "react"
import { Button, Tooltip } from "antd"
import { withRouter } from "react-router-dom"

import { withFirebase } from "../Firebase/Firebase"

const SignOutIconButton = ({ firebase, history }) => (
  <Tooltip
    className="logout-icon-tooltip authUser"
    placement="bottom"
    title="Sign Out"
    arrowPointAtCenter
  >
    <Button
      className="sign-out-icon-button"
      size="large"
      shape="circle"
      onClick={() => {
        firebase.signOut(history)
      }}
      icon="logout"
      ghost
    />
  </Tooltip>
)

export default withRouter(withFirebase(SignOutIconButton))

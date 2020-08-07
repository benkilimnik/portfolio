import React from "react"
import { Button } from "antd"

import * as ROUTES from "../../constants/routes"

const GoBackButton = props => {
  console.log(props)
  return (
    <Button
      className="go-back-button"
      type="primary"
      size="large"
      onClick={() => {
        if (!props.authUser) {
          props.history.push(ROUTES.SIGN_IN)
        } else {
          if (props.authUser.admin) {
            props.history.push(ROUTES.ADMIN)
          } else if (props.authUser.TOOK_SUR) {
            props.history.push(ROUTES.RESULTS)
          } else {
            props.history.push(ROUTES.RESULTS)
          }
        }
      }}
    >
      Go Back
    </Button>
  )
}

export default GoBackButton

import React from "react"

import { Link } from "react-router-dom"
import { Steps, Tooltip, Icon } from "antd"
import * as ROUTES from "../constants/routes"

import SignOutIconButton from "./SignOut/SignOutIconButton"

const { Step } = Steps

const HStep = props => (
  <Step
    className={`HStep ${props.position}`}
    status="process"
    direction="horizontal"
    icon={
      props.authUser && props.title === "Login"
        ? loginIcon(props)
        : normalIcon(props)
    }
  />
)

const HeaderSteps = props => {
  const { authUser } = props
  return (
    <div className="HeaderStepsBox" direction="horizontal">
      <Steps className="HeaderSteps">
        <HStep
          title="Login"
          position="left"
          route={ROUTES.SIGN_IN}
          icon="user"
          authUser={authUser}
        />
        <HStep
          title="Survey"
          position="mid"
          route={ROUTES.SURVEY}
          icon="solution"
        />
        {authUser && authUser.admin ? (
          <HStep
            title="Admin"
            position="right"
            route={ROUTES.ADMIN}
            icon="lock"
          />
        ) : (
          <HStep
            title="Results"
            position="right"
            route={ROUTES.RESULTS}
            icon="smile-o"
          />
        )}
      </Steps>
    </div>
  )
}

const loginIcon = props => {
  return (
    <div className="login-out-icon-box">
      <SignOutIconButton />
      <Icon
        className={`stepIcon ${props.title.toLowerCase()}-icon authUser`}
        type={props.icon}
        style={{ fontSize: "36px", color: "#ffff" }}
      />
    </div>
  )
}

const normalIcon = props => {
  return (
    <Tooltip placement="bottom" title={props.title} arrowPointAtCenter>
      <Link className="icon-link-box" to={props.route}>
        <Icon
          className={`stepIcon ${props.title.toLowerCase()}-icon`}
          type={props.icon}
          style={{ fontSize: "36px", color: "#ffff" }}
        />
      </Link>
    </Tooltip>
  )
}

export default HeaderSteps

import React from "react"
import { Icon } from "antd"
import { Row, Col } from "antd"

import GoBackButton from "./GoBackButton"

const AlreadySignedInPage = props => {
  return (
    <Col className="already-in-col">
      <Row className="already-in-row">
        <Icon
          className="already-in-icon"
          type="alert"
          theme="twoTone"
          twoToneColor="#c61133"
        />
        <p className="already-in-text">You are already signed in.</p>
        <GoBackButton {...props} />
      </Row>
    </Col>
  )
}

export default AlreadySignedInPage

import React from "react"
import { Icon } from "antd"
import { Row, Col } from "antd"

import GoBackButton from "./GoBackButton"

const UnauthorizedPage = props => {
  return (
    <Col className="unauthorized-col">
      <Row className="unauthorized-row">
        <Icon
          className="unauthorized-icon"
          type="alert"
          theme="twoTone"
          twoToneColor="#c61133"
        />
        <p className="unauthorized-text">
          This is for admins only. Please step back.
        </p>
        <GoBackButton {...props} />
      </Row>
    </Col>
  )
}

export default UnauthorizedPage

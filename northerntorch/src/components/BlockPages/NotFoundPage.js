import React from "react"
import { Icon } from "antd"
import { Row, Col } from "antd"

import GoBackButton from "./GoBackButton"

const UnauthorizedPage = props => {
  return (
    <Col className="not-found-col">
      <Row className="not-found-row">
        <Icon
          className="not-found-icon"
          type="alert"
          theme="twoTone"
          twoToneColor="#c61133"
        />
        <p className="not-found-text">404 page not found</p>
        <GoBackButton {...props} />
      </Row>
    </Col>
  )
}

export default UnauthorizedPage

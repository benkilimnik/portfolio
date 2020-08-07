import React from "react"
import { Icon } from "antd"
import { Row, Col } from "antd"

const NoResultsPage = () => {
  return (
    <Col className="no-results-col">
      <Row className="no-results-row">
        <Icon
          className="no-results-icon"
          type="trophy"
          theme="twoTone"
          twoToneColor="#236cbe"
          style={{ fontSize: "54px" }}
        />
        <p className="no-results-text">Thanks for taking the survey.</p>
        <p className="no-results-text">No results yet. Stay tuned!</p>
      </Row>
    </Col>
  )
}

export default NoResultsPage

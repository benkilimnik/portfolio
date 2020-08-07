import React from "react"

import { Icon } from "antd"
import { Row, Col } from "antd"

import ViewResultsButton from "./ViewResultsButton"

const DoneSurveyPage = props => {
  const { VIEW_RES } = props
  return (
    <Col className="done-survey-col">
      <Row className="done-survey-row">
        <Icon
          className="done-survey-icon"
          type="trophy"
          theme="twoTone"
          twoToneColor="#236cbe"
        />
        <p className="done-survey-text">Thanks for taking the survey.</p>

        {VIEW_RES ? (
          <React.Fragment>
            <p className="done-survey-text">Your results are posted!</p>
            <ViewResultsButton {...props} />
          </React.Fragment>
        ) : (
          <p className="done-survey-text"> No results yet. Stay tuned!</p>
        )}
      </Row>
    </Col>
  )
}

export default DoneSurveyPage

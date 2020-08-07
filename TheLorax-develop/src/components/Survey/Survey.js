import React, { Component } from "react"
import { Formik } from "formik"
import { Row, Col } from "antd"

import generateSurveySchema from "../../functions/surveySchema"
import { title, subtitle } from "../../data/surveyTitles"

import SurveyForm from "./SurveyForm"
import { withFirebase } from "../Firebase/Firebase"

class SurveyPage extends Component {
  constructor(props) {
    super(props)
    this.state = {
      loading: false
    }

    this.validationSchema = generateSurveySchema()
    this.submit = this.submit.bind(this)
  }

  submit(result) {
    this.setState({ loading: true })
    this.props.firebase.completeForm(result).then(() => {
      this.setState({ loading: false })
    })
  }

  render() {
    return (
      <Col className="survey-col">
        <Row className="survey-row">
          <React.Fragment>
            <h1 className="survey-title">{title}</h1>
            <p className="survey-subtitle">{subtitle}</p>
            <Formik
              render={props => (
                <SurveyForm {...props} loading={this.state.loading} />
              )}
              onSubmit={this.submit}
              validationSchema={this.validationSchema}
              initialValues={{}}
            />
          </React.Fragment>
        </Row>
      </Col>
    )
  }
}

export default withFirebase(SurveyPage)

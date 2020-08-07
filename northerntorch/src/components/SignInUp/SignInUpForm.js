import React, { Component } from "react"
import { Formik } from "formik"
import { withRouter } from "react-router-dom"

import { Row, Col } from "antd"

import SignInUpFields from "./SignInUpFields"

import fairfaxLogo from "../../assets/NorthernTorchlogo.svg"

class SignInUpForm extends Component {
  constructor(props) {
    super(props)

    this.state = { loading: false }

    this.timeout = undefined
    this.validationSchema = props.validationSchema
    this.enterLoading = this.enterLoading.bind(this)
    this.onSubmit = this.onSubmit.bind(this)
  }

  enterLoading() {
    this.setState({ loading: true })
    this.timeout = setTimeout(() => {
      this.setState({ loading: false })
      clearTimeout(this.timeout)
    }, 16000)
  }

  onSubmit({ username, email, group_code }) {
    this.enterLoading()
    this.props.submit(username, email, group_code).catch(err => {
      clearTimeout(this.timeout)
      this.props.openErrorNotification(err.code, err.details)
      this.setState({ loading: false })
    })
  }

  render() {
    const { loading } = this.state

    return (
      <Col className="sign-in-up-col">
        <Row className="sign-in-up-row">
          <img src={fairfaxLogo} className="sign-in-logo" alt="Sign-In Logo" />

          <Formik
            render={props => {
              return (
                <SignInUpFields {...this.props} {...props} loading={loading} />
              )
            }}
            onSubmit={values => this.onSubmit(values)}
            validationSchema={this.validationSchema}
            initialValues={{}}
          />
        </Row>
      </Col>
    )
  }
}

export default withRouter(SignInUpForm)

import React, { Component } from "react"

import { withFirebase } from "../Firebase/Firebase"
import { Formik } from "formik"
import { Form, Input, Button } from "antd"

import {
  openSuccessNotification,
  openErrorNotification
} from "../Notifications"

class GroupAdd extends Component {
  constructor(props) {
    super(props)
    this.state = {
      loading: false
    }

    this.timeout = undefined
    this.submitGroupAdd = this.submitGroupAdd.bind(this)
  }

  enterLoading() {
    this.setState({ loading: true })
    this.timeout = setTimeout(() => {
      this.setState({ loading: false })
      clearTimeout(this.timeout)
    }, 16000)
  }

  submitGroupAdd(groupNameObj) {
    const groupName = groupNameObj.groupInput
    this.enterLoading()
    this.props.firebase
      .adminGroupAdd(groupName)
      .then(res => {
        openSuccessNotification(res.status, res.message)
      })
      .catch(err => {
        openErrorNotification(err.code, err.details)
      })
      .then(() => {
        clearTimeout(this.timeout)
        this.setState({ loading: false })
      })
  }

  render() {
    const { loading } = this.state
    return (
      <Formik
        render={formikProps => (
          <Form
            className="add-group-form"
            onSubmit={formikProps.handleSubmit}
            layout="horizontal"
          >
            <Input
              name="groupInput"
              value={formikProps.values.groupInput}
              onChange={formikProps.handleChange}
              placeholder="New Group"
              size="large"
            />
            <Button
              size="large"
              className="add-group-button"
              type="primary"
              htmlType="submit"
              loading={loading}
            >
              New Group
            </Button>
          </Form>
        )}
        onSubmit={groupNameObj => this.submitGroupAdd(groupNameObj)}
        initialValues={{}}
      />
    )
  }
}

export default withFirebase(GroupAdd)

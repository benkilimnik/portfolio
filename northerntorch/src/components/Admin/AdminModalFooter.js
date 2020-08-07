import React, { Component } from "react"

import { withFirebase } from "../Firebase/Firebase"

import {
  openSuccessNotification,
  openErrorNotification
} from "../Notifications"
import { Tooltip, Button } from "antd"

class AdminModalFooter extends Component {
  constructor(props) {
    super(props)
    this.state = {
      deleteLoading: false,
      viewResultsLoading: false
    }
    this.deleteTimeout = undefined
    this.viewResultsTimeout = undefined

    this.enterLoading = this.enterLoading.bind(this)
    this.onDeleteClick = this.onDeleteClick.bind(this)
    this.onAllowViewClick = this.onAllowViewClick.bind(this)
  }

  enterLoading(buttonLoadingString, timeout) {
    this.setState({ [buttonLoadingString]: true })
    timeout = setTimeout(() => {
      this.setState({ [buttonLoadingString]: false })
      clearTimeout(timeout)
    }, 16000)
  }

  onDeleteClick(member, uid, groupName) {
    this.enterLoading("deleteLoading", this.deleteTimeout)
    this.props.firebase
      .adminDeleteItem(uid, groupName)
      .then(res => {
        this.props.UIDelete(member, groupName)
        openSuccessNotification(res.status, res.message)
      })
      .catch(err => {
        console.log(err)
        openErrorNotification(err.code, err.details)
      })
      .then(() => {
        clearTimeout(this.deleteTimeout)
        this.setState({ deleteLoading: false })
      })
  }

  onAllowViewClick(uid, groupName) {
    this.enterLoading("viewResultsLoading", this.viewResultsTimeout)
    this.props.updateViewRes()
    this.props.firebase
      .adminAllowViewCom(uid, groupName)
      .then(res => {
        openSuccessNotification(res.status, res.message)
      })
      .catch(err => {
        console.log(err)
        openErrorNotification(err.code, err.details)
      })
      .then(() => {
        clearTimeout(this.viewResultsTimeout)
        this.setState({ viewResultsLoading: false })
      })
  }

  render() {
    const { deleteLoading, viewResultsLoading } = this.state
    const { member, groupName, memberUID, member_VIEW_RES } = this.props
    return (
      <div className="admin-modal-footer">
        <Tooltip title={`Click to delete this ${member ? "member" : "group"}`}>
          <Button
            className="admin-control-button"
            onClick={() => {
              this.onDeleteClick(member, memberUID, groupName)
            }}
            type="secondary"
            shape="circle"
            icon="delete"
            loading={deleteLoading}
          />
        </Tooltip>
        <Tooltip
          title={
            !member_VIEW_RES
              ? `Click to allow this ${
                  member ? "member" : "group"
                } to see their results`
              : `This member already has access to view their results`
          }
        >
          <Button
            className="admin-control-button"
            onClick={() => {
              this.onAllowViewClick(memberUID, groupName)
            }}
            type="secondary"
            shape="circle"
            icon="eye"
            disabled={member_VIEW_RES}
            loading={viewResultsLoading}
          />
        </Tooltip>
      </div>
    )
  }
}

export default withFirebase(AdminModalFooter)

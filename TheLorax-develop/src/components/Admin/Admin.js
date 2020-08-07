import React, { Component } from "react";

import AdminResults from "./AdminResults";
import GroupAdd from "./AdminGroupAdd";
import AdminDropdown from "./AdminDropdown";

import { withFirebase } from "../Firebase/Firebase";

import { Row, Col } from "antd";

class AdminPage extends Component {
  constructor(props) {
    super(props);
    this.state = {
      memberUID: undefined,
      data: {},
      modalVisible: false,
      groups: {},
      dropDownvalue: undefined,
      loadingGroups: true,
      loadingResults: true,
      member_VIEW_RES: false
    };
    this.onSelect = this.onSelect.bind(this);
    this.UIDelete = this.UIDelete.bind(this);
    this.hideModal = this.hideModal.bind(this);
    this.updateViewRes = this.updateViewRes.bind(this);

    this.listener = () => {};
  }

  componentDidMount() {
    this.listener = this.props.firebase.onGroupListener(groups => {
      this.setState({
        groups,
        loadingGroups: false
      });
    }, this.props.authUser);
  }

  componentWillUnmount() {
    this.listener();
  }

  onSelect(value, node) {
    const memberUID = node.props.uid;
    const { member, groupName } = node.props;
    this.setState({
      modalVisible: true,
      loadingResults: true,
      memberUID,
      member,
      groupName
    });
    this.getResults(memberUID);
  }

  updateViewRes() {
    this.setState({ member_VIEW_RES: true });
  }

  hideModal() {
    this.setState({ modalVisible: false, loadingResults: true });
  }

  getResults(uid) {
    const defaultData = { DI: 0, PR: 0, PL: 0, CO: 0 };
    if (!uid) {
      this.setState({ data: defaultData, memberUID: uid });
      return;
    }
    return this.props.firebase
      .getUserCommunicationStyle(uid)
      .then(data => {
        this.setState({
          data,
          memberUID: uid,
          member_VIEW_RES: !!data.VIEW_RES,
          loadingResults: false
        });
      })
      .catch(error => {
        console.error("error getting data", error);
      });
  }

  UIDelete(member, groupName) {
    const { groups } = this.state;
    if (!member) {
      delete groups[groupName];
    } else {
      delete groups[groupName][member];
    }
    this.hideModal();
    this.setState({ groups, dropDownvalue: undefined });
  }

  render() {
    const { data, memberUID, member_VIEW_RES, ...dropDownProps } = this.state;

    return (
      <Col className="admin-col">
        <Row className="admin-row">
          <div className="admin-title">Admin Dashboard</div>
          <AdminDropdown
            onSelect={this.onSelect}
            {...dropDownProps}
            {...this.props}
          />
          <AdminResults
            hideModal={this.hideModal}
            UIDelete={this.UIDelete}
            onDeleteClick={this.onDeleteClick}
            onAllowViewClick={this.onAllowViewClick}
            updateViewRes={this.updateViewRes}
            {...this.state}
          />
          <GroupAdd />
        </Row>
      </Col>
    );
  }
}

export default withFirebase(AdminPage);

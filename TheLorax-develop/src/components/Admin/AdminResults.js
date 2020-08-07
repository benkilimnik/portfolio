import React, { Component } from "react";

import { Modal } from "antd";

import AdminModalFooter from "./AdminModalFooter";
import DoughnutChart from "../Results/DoughnutChart";
import Legend from "../Results/Legend";
import GraphLoader from "../BlockPages/GraphLoader";

class AdminResults extends Component {
  constructor(props) {
    super(props);
    this.state = {};
  }

  render() {
    const {
      member,
      groupName,
      memberUID,
      member_VIEW_RES,
      modalVisible,
      data,
      loadingResults
    } = this.props;

    const {
      hideModal,
      UIDelete,
      onDeleteClick,
      onAllowViewClick,
      updateViewRes
    } = this.props;

    return memberUID ? (
      <Modal
        className="admin-results-modal"
        title={
          <p className="admin-modal-title">
            {member ? `Member: ${member}` : `Group: ${groupName}`}
          </p>
        }
        visible={modalVisible}
        onCancel={hideModal}
        footer={
          <AdminModalFooter
            member={member}
            groupName={groupName}
            memberUID={memberUID}
            member_VIEW_RES={member_VIEW_RES}
            UIDelete={UIDelete}
            onDeleteClick={onDeleteClick}
            onAllowViewClick={onAllowViewClick}
            updateViewRes={updateViewRes}
          />
        }
      >
        {loadingResults ? (
          <div className="admin-results-loader">
            <GraphLoader />
          </div>
        ) : (
          <div className="admin-results-modal-content">
            <DoughnutChart data={data} />
            <Legend />
          </div>
        )}
      </Modal>
    ) : null;
  }
}

export default AdminResults;

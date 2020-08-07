import React, { Component, Fragment } from "react";

import { Row, Col } from "antd";

import Legend from "./Legend";
import DoughnutChart from "./DoughnutChart";

import { withFirebase } from "../Firebase/Firebase";

import GraphLoader from "../BlockPages/GraphLoader";

class Results extends Component {
  constructor(props) {
    super(props);

    this.state = {
      data: {},
      loading: true,
      error: undefined
    };
    this.getUserData = this.getUserData.bind(this);
  }

  getUserData() {
    const { firebase, authUser } = this.props;
    this.setState({ loading: true });
    return firebase
      .getUserCommunicationStyle(authUser.uid)
      .then(data => {
        this.setState({ loading: false });
        this.setState({ data });
      })
      .catch(error => {
        this.setState({ error: `error getting data ${error}` });
      });
  }

  componentDidMount() {
    this.getUserData();
  }

  render() {
    return (
      <Col className="results-col">
        <span className="ResultsName">{this.props.authUser.name}</span>
        <Row className="results-row">
          {this.state.loading ? (
            <GraphLoader />
          ) : (
            <Fragment>
              <DoughnutChart data={this.state.data} />
              <Legend />{" "}
            </Fragment>
          )}
        </Row>
      </Col>
    );
  }
}

export default withFirebase(Results);

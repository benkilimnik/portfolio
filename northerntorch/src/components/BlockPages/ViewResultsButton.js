import React from "react"
import { Button } from "antd"

import * as ROUTES from "../../constants/routes"

const ViewResultsButton = props => (
  <Button
    className="view-results-button"
    type="primary"
    size="large"
    onClick={() => props.history.push(ROUTES.RESULTS)}
  >
    View Results!
  </Button>
)

export default ViewResultsButton

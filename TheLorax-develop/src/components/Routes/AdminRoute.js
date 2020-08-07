import React from "react"

import AdminPage from "../Admin/Admin"
import UnauthorizedPage from "../BlockPages/Unauthorized"

const AdminRoute = props => {
  const admin = props.authUser ? props.authUser.admin : null
  return admin ? <AdminPage {...props} /> : <UnauthorizedPage {...props} />
}

export default AdminRoute

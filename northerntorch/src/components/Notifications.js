import { notification } from "antd"

const openSuccessNotification = (code, details) => {
  notification["success"]({
    message: code,
    description: details
  })
}

const openErrorNotification = (code, details) => {
  notification["error"]({
    message: code,
    description: details
  })
}

export { openSuccessNotification, openErrorNotification }

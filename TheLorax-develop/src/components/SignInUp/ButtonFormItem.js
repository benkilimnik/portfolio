import React from "react"

import { Form, Button } from "antd"

const ButtonFormItem = props => {
  const { cssName, isInvalid, loading, error } = props
  return (
    <Form.Item
      className="formItem"
      validateStatus={error ? "error" : null}
      help={error ? error.message : null}
    >
      <Button
        className={cssName}
        type="primary"
        size="large"
        disabled={isInvalid}
        loading={loading}
        htmlType="submit"
      >
        {props.children}
      </Button>
    </Form.Item>
  )
}

export default ButtonFormItem

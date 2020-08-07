import React from "react"

import { Form, Input, Icon } from "antd"

const InputFormItem = props => {
  const { name, value, placeholder, onChange, iconType, error } = props
  return (
    <Form.Item
      style={{ marginTop: 26 }}
      className="formItem"
      validateStatus={error ? "error" : null}
      hasFeedback
    >
      <Input
        prefix={<Icon className="form-prefix-icon" type={iconType} />}
        name={name}
        value={value}
        placeholder={placeholder}
        onChange={onChange}
        type="text"
        size="large"
      />
    </Form.Item>
  )
}

export default InputFormItem

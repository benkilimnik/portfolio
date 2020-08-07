import React from "react"

import { Form } from "antd"

import InputFormItem from "./InputFormItem"
import ButtonFormItem from "./ButtonFormItem"
import { SignInLink } from "./SignIn"
import { SignUpLink } from "./SignUp"

const SignInUpFields = props => {
  const {
    handleSubmit,
    values,
    handleChange,
    errors,
    type,
    isValid,
    loading
  } = props
  return (
    <Form onSubmit={handleSubmit} className="form">
      {type === "up" ? (
        <InputFormItem
          name="username"
          value={values.username}
          placeholder="Full Name"
          onChange={handleChange}
          iconType="user"
          error={errors.username}
        />
      ) : null}

      <InputFormItem
        name="email"
        value={values.email}
        placeholder="Email Address"
        onChange={handleChange}
        iconType="mail"
        error={errors.email}
      />

      <InputFormItem
        name="group_code"
        value={values.group_code}
        placeholder="Group Code"
        onChange={handleChange}
        iconType="lock"
        error={errors.group_code}
      />

      <ButtonFormItem
        cssName="sign-in-up-button"
        isInvalid={!isValid}
        loading={loading}
        error={errors.username || errors.email || errors.group_code}
      >
        {type === "in" ? "Sign In" : "Sign Up"}
      </ButtonFormItem>

      <div className="sign-in-up-link">
        {type === "in" ? <SignUpLink /> : <SignInLink />}
      </div>
    </Form>
  )
}

export default SignInUpFields

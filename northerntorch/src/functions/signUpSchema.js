import * as Yup from "yup"

const generateSignUpSchema = () => {
  const schema = {
    username: undefined,
    email: undefined,
    group_code: undefined
  }

  Object.keys(schema).forEach(field => {
    schema[field] = Yup.string(field).required(`The ${field} field is required`)
  })
  return Yup.object(schema)
}

export default generateSignUpSchema

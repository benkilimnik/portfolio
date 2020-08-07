import * as Yup from "yup"

const generateSignInSchema = () => {
  const schema = {
    email: undefined,
    group_code: undefined
  }

  Object.keys(schema).forEach(field => {
    schema[field] = Yup.string(field).required(`The ${field} field is required`)
  })
  return Yup.object(schema)
}

export default generateSignInSchema

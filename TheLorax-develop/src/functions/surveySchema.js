import * as Yup from "yup"
import surveyQuestions from "../data/surveyQs.json"

const generateSurveySchema = () => {
  const schema = {}
  for (let i = 1; i <= surveyQuestions.set1.length; i++) {
    const questionNum = i < 10 ? `0${i}` : i
    schema[`q${questionNum}`] = Yup.string(`q${questionNum}`).required(
      `Question ${questionNum} is required`
    )
  }

  for (let i = 0; i < surveyQuestions.set2.length; i++) {
    const question = surveyQuestions.set2[i][0]
    schema[question] = Yup.string(question).required(
      `Question ${question} is required`
    )
  }
  return Yup.object(schema)
}

export default generateSurveySchema

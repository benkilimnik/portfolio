import React from "react"
import { Button, Form } from "antd"
import "antd/dist/antd.css"

import surveyQuestions from "../../data/surveyQs.json"
import SurveyQuestions from "./SurveyQuestions"

const questionsSet1 = surveyQuestions.set1
const questionsSet2 = surveyQuestions.set2

const SurveyForm = props => {
  const { handleSubmit, isValid, loading } = props

  return (
    <Form className="survey-form" onSubmit={handleSubmit} layout="vertical">
      <SurveyQuestions questionsSet={questionsSet1} {...props} />
      <SurveyQuestions questionsSet={questionsSet2} questionFirst {...props} />

      <Button
        className="survey-button"
        type="primary"
        size="large"
        icon="file-done"
        loading={loading}
        disabled={!isValid}
        htmlType="submit"
      >
        Submit
      </Button>
    </Form>
  )
}

export default SurveyForm

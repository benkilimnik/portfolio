import React from "react"

import { Form, Radio } from "antd"
const RadioGroup = Radio.Group

const SurveyQuestionOptions = props => {
  const { questionOptions } = props
  return questionOptions.map((option, index) => (
    <Radio className="radio" key={index} value={index}>
      {option}
    </Radio>
  ))
}

const SurveyQuestion = props => {
  const {
    index,
    values,
    questionNum,
    question,
    handleChange,
    questionOptions,
    questionFirst
  } = props

  return (
    <Form.Item
      className={`survey-form-item-${questionFirst ? "2" : "1"}`}
      key={index}
    >
      <p className="survey-q-long">{question}</p>
      <RadioGroup
        className={`radio-group-${questionFirst ? "2" : "1"}`}
        onChange={handleChange}
        name={questionFirst ? question : `q${questionNum}`}
        value={questionFirst ? values[question] : values[`q${questionNum}`]}
      >
        <SurveyQuestionOptions
          index={index}
          questionOptions={questionOptions}
        />
      </RadioGroup>
    </Form.Item>
  )
}

const generateQNumText = index => {
  return index + 1 < 10 ? `0${index + 1}` : index + 1
}

const SurveyQuestions = props => {
  const { questionsSet, questionFirst } = props

  return questionsSet.map((questionOptions, index) => {
    const questionNum = generateQNumText(index)
    const question = questionFirst ? questionOptions[0] : "Q-" + questionNum

    return (
      <SurveyQuestion
        key={index}
        questionOptions={
          questionFirst ? questionOptions.slice(1) : questionOptions
        }
        index={index}
        questionNum={questionNum}
        question={question}
        {...props}
      />
    )
  })
}

export default SurveyQuestions

import React, { Component } from "react"

import { Doughnut } from "react-chartjs-2"

class DoughnutChart extends Component {
  constructor(props) {
    super(props)

    this.state = {
      data: this.formatData(props.data),
      aspectRatio: 2
    }

    this.options = {
      responsiveAnimationDuration: 0,
      legend: {
        display: false
      },
      tooltips: {
        bodyFontSize: 22,
        caretSize: 8
      }
    }
    this.chartRef = undefined
  }

  formatData(results) {
    if (results) {
      const { DI, PR, PL, CO } = results
      return {
        labels: ["Director", "Promoter", "Planner", "Connector"],
        datasets: [
          {
            data: [DI, PR, PL, CO],
            backgroundColor: ["#ff6d1e", "#FD6586", "#42CBCB", "#FFCE56"],
            hoverBackgroundColor: ["#ff6d1e", "#FD6586", "#42CBCB", "#FFCE56"],
            hoverBorderColor: ["#d4d6d6", "#d4d6d6", "#d4d6d6", "#d4d6d6"]
          }
        ]
      }
    }
  }
  componentDidMount() {
    this.chartRef.chartInstance.aspectRatio = 1
  }

  componentDidUpdate(prevProps) {
    if (this.props.data !== prevProps.data) {
      this.setState({ data: this.formatData(this.props.data) })
    }
  }

  render() {
    return (
      <div className="aspect-ratio">
        <div className="chart-wrapper">
          <Doughnut
            data={this.state.data}
            options={this.options}
            ref={ref => (this.chartRef = ref)}
          />
        </div>
      </div>
    )
  }
}

export default DoughnutChart

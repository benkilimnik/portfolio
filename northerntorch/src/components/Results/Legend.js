import React from "react"

const Legend = () => {
  return (
    <div className="legend-wrapper">
      <div className="legend-key-wrapper">
        <div className="legend-color-1" />
        <p className="legend-text">Director</p>
      </div>
      <div className="legend-key-wrapper">
        <div className="legend-color-2" />
        <p className="legend-text">Promoter</p>
      </div>
      <div className="legend-key-wrapper">
        <div className="legend-color-3" />
        <p className="legend-text">Planner</p>
      </div>
      <div className="legend-key-wrapper">
        <div className="legend-color-4" />
        <p className="legend-text">Connector</p>
      </div>
    </div>
  )
}

export default Legend

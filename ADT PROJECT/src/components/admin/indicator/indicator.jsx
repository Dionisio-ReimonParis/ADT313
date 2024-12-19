import React from 'react';
import './indicator.css';

const Indicator = ({ message }) => {
  return message ? (
    <div className="indicator-container">
      <div className="indicator-message">{message}</div>
    </div>
  ) : null;
};

export default Indicator;

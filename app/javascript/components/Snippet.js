import React from "react"
import PropTypes from "prop-types"

class Snippet extends React.Component {
  render () {
    return (
      <React.Fragment>
        Trigger: {this.props.trigger}
        Replacement: {this.props.replacement}
      </React.Fragment>
    );
  }
}

Snippet.propTypes = {
  trigger: PropTypes.string,
  replacement: PropTypes.string
};
export default Snippet;

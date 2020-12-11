import React from "react"
import PropTypes from "prop-types"
class Whatsup extends React.Component {
  render () {
    return (
      <React.Fragment>
        Greeting: {this.props.greeting}
      </React.Fragment>
    );
  }
}

Whatsup.propTypes = {
  greeting: PropTypes.string
};
export default Whatsup

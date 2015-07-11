var Hello = React.createClass({
  render: function () {
    return <h3>Hello {this.props.message}!</h3>;
  }
});

var Message = React.createClass({
  render: function () {
    return <h3>React is very {this.props.message}!</h3>;
  }
});

$(document).ready(function () {
  var target_box = document.getElementById('title')
  var target_description = document.getElementById('description')

  React.render(<h2>REACT</h2>, target_box);
  React.render(<Hello message="world" />, target_description);
});


class Code extends React.Component {
  constructor(props) {
    super(props);
  }

  handleCreate() {
    return $.ajax({
      method: 'post',
      async: false,
      url: '/codes'
    });
  }

  render() {
    return <button className="gen-button" onClick={() => this.handleCreate()}>Generate new code</button>
  }
}
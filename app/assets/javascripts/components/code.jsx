class Code extends React.Component {
  constructor(props) {
    super(props);
    this.state = {};
  }

  handleCreate() {
    return $.ajax({
      method: 'post',
      url: '/codes'
    });
  }

  render() {
    return(
      <a href="">
        <button className="gen-button" onClick={() => this.handleCreate().then( data => {
          this.setState
        }

        )}>Generate new code</button>
      </a>
    )
  }
}
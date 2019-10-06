class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = { codes: [] };
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  componentDidMount() {
    $.getJSON('/api/codes.json', (response) => { this.setState({ codes: response }) });
  }

  handleSubmit() {
    $.ajax({
      method: 'post',
      url: '/api/codes',
      success: (response) => {
        const new_code = response[Object.keys(response).length];
        const updated_code_list = this.state.codes.concat(new_code);
        this.setState({codes: updated_code_list});
      }
    });
  }
  
  render() {
    return(
      <div>
        <div className="genSection">
          <h1>CODE GENERATOR</h1>
          <button className="gen-button" onClick={() => this.handleSubmit()}>Generate new code</button>
        </div>

        <div>
          <AllCodes codes={this.state.codes}/>
        </div>
      </div>
    )
  }
}
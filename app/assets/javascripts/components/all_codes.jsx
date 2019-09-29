class AllCodes extends React.Component {
  constructor(props) {
    super(props);
    this.state = { 
      codes: this.props.codes
    };
    this.copyCode = this.copyCode.bind(this);
    this.displayCopyMessage = this.displayCopyMessage.bind(this);
  }

  displayCopyMessage(el, code) {
    el.innerHTML = "Copied!"
    setTimeout(() => {
      el.innerHTML = code;
    }, 2000)
  }

  copyCode(el, code) {
    clipboard.writeText(code);
    this.displayCopyMessage(el, code)
  }

  render() {
    const lis = this.state.codes.map((code) => {
      return (
        <li className="usedCode" onClick={(e) => this.copyCode(e.target, code.name)} key={code.id}> 
          {code.name} 
        </li>
      )
    });

    return <ul className="usedSection"> {lis} </ul>
  }
}
const App = (props) => {
  return(
    <div>
      <div className="genSection">
        <h1>CODE GENERATOR</h1>
        <Code />
      </div>

      <div>
        <AllCodes codes={props.codes}/>
      </div>
    </div>
  )
}
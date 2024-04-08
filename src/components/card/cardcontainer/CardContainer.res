module CardContainer = {
  @react.component
  let make = (~children: React.element) => {
    <div className="container 2xl:px-80 xl:px-52">
      <div className="login-card">
        <div className="login-cardwrapper">
            children
        </div>
      </div>
    </div>
  }
}

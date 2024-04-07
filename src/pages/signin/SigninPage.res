@react.component
let make = () => {

  let onClick = (_evt) => {
    RescriptReactRouter.push("/home")
  };

 <div className="login-page">
    <div className="container 2xl:px-80 xl:px-52">
      <div className="login-card">
        <div className="login-cardwrapper">
          <CardLeft 
            title="Welcome back!!"
            content="Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"
            />
          <div className="login-container">
            <div>
              <h1 className="text-2xl/tight mb-3">{React.string("Sign In")}</h1>
              <p className="text-sm font-medium leading-relaxed">
              {React.string("We are here to help you.")}
              </p>
            </div>
            <div className="login-section">
              <Input 
                label="Email"
                type_="text"
                name="email"
                placeholder="Enter your email"
              />                                                                                      
              <Input 
                label="Password"
                type_="password"
                name="pwd"
                placeholder="Enter your password"
              /> 
            </div>
            <div className="flex flex-wrap items-center justify-between gap-6 mt-8">
              <p className="text-sm text-gray-500">
              {React.string("Don't have an account?")}
              <a href="/signup" className="ms-2 underline text-sky-600">
              {React.string("Sign Up")}
              </a>
              </p>
            <Button 
              onClick={onClick}
              label="Sign in"
            />
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
}

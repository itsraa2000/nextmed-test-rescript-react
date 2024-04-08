open CardContainer
@react.component
let make = () => {

  let onClick = (_evt) => {
    RescriptReactRouter.push("/home")
  };

 <div className="login-page">
    <CardContainer>
          <CardLeft 
            title="Welcome back!!"
            content="Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"
            />
          <CardRight
            header="Sign Up"
            subhead="Welcome to ours members"
          >
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
          </CardRight>
    </CardContainer>
  </div>
}

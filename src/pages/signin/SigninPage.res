open CardContainer

type user = {
  email: string,
  pwd: string,
}

@react.component
let make = () => {

  let (email, setEmail) = React.useState(_ => "");
  let (pwd, setPwd) = React.useState(_ => "");

  let onClick = (_evt) => {
      let  user = {
      email: email,
      pwd: pwd,
    }
      Js.log(user)
      RescriptReactRouter.push("/home")
  }


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
                value={email}
                onChange={e => setEmail(ReactEvent.Form.target(e)["value"])}
              />                                                                                      
              <Input 
                label="Password"
                type_="password"
                name="pwd"
                placeholder="Enter your password"
                value={pwd}
                onChange={e => setPwd(ReactEvent.Form.target(e)["value"])}
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

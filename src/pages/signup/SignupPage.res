open CardContainer


type user = {
  fullName: string,
  email: string,
  pwd: string,
}
@react.component
let make = () => {

  let (fullName, setFullName) = React.useState(_ => "");
  let (email, setEmail) = React.useState(_ => "");
  let (pwd, setPwd) = React.useState(_ => "");

  let onClick = (_evt) => {
    let newUser: user = {
      fullName: fullName,
      email: email,
      pwd: pwd,
    }
    Js.log(newUser)
    // Save user to local storage
    // Reset form fields
    setFullName(_ => "")
    setEmail(_ => "")
    setPwd(_ => "")
    RescriptReactRouter.push("/")
  }

 <div className="login-page">
    <CardContainer>
          <CardLeft 
            title="Welcome to ours members!!"
            content="Lorem Ipsum is simply dummy text of the printing and typesetting industry."
            />
          <CardRight
            header="Sign Up"
            subhead="Welcome to ours members"
          >
             <div className="boxregister-section">
              <Input 
                label="Full Name"
                type_="text"
                name="fullName"
                placeholder="Enter your name"
                value={fullName}
                onChange={e => setFullName(ReactEvent.Form.target(e)["value"])}
              /> 
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
            <div className="flex justify-end items-center gap-6 mt-8">
            <Button 
              onClick={onClick}
              label="Sign Up"
            />
            </div>
          </CardRight>
    </CardContainer>
  </div>
}

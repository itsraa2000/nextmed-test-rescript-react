open CardContainer
@react.component
let make = () => {

  let onClick = (_evt) => {
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
              /> 
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

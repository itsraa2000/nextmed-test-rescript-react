@react.component
let make = () => {

  let onClick = (_evt) => {
    RescriptReactRouter.push("/")
  }

 <div className="login-page">
    <div className="container 2xl:px-80 xl:px-52">
      <div className="login-card">
        <div className="login-cardwrapper">
          <CardLeft 
            title="Welcome to ours members!!"
            content="Lorem Ipsum is simply dummy text of the printing and typesetting industry."
            />
          <div className="boxregister-container">
            <div>
              <h1 className="text-2xl/tight mb-3">{React.string("Sign Up")}</h1>
              <p className="text-sm font-medium leading-relaxed">
                {React.string("Let's Get Start.")}
              </p>
            </div>
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
          </div>
        </div>
      </div>
    </div>
  </div>
}

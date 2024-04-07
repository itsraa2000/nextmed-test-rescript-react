%%raw("import './App.css'")

@react.component
let make: unit => React.element = _ => {
  let url = RescriptReactRouter.useUrl();
  let match =
  switch url.path {
    | list{} => <SigninPage />
    | list{"signup"} => <SignupPage />
    | list{"home"} => <ProfilePage />
    | _ => <NotFoundPage />
  }

  <div>
    <main>
      {match}
    </main>
  </div>;
};

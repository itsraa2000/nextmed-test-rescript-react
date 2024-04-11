type rec user = {
  fullName: string,
  email: string,
  pwd: string,
}

@react.component
let make = () => {
  let isLoggedIn = Dom.Storage.getItem("isLoggedIn", Dom.Storage.localStorage);

  let (user, _setUser) = React.useState(() =>
    switch isLoggedIn {
    | Some(userJson) =>
      let user: user = Js.Json.parseExn(userJson)->Obj.magic;
      user;
    | None => {
        fullName: "",
        email: "",
        pwd: "",
      }
    }
  );

  let onClick = _evt => {
    Dom.Storage.removeItem("isLoggedIn", Dom.Storage.localStorage);
    RescriptReactRouter.push("/");
  };

  React.useEffect0(() => {
    if (isLoggedIn === None) {
      RescriptReactRouter.push("/");
    }
    None;
  });

  
  <div className="profile-page">
    <div className="container 2xl:px-[400px] xl:px-[400px]">
        <CardBio 
          title="Bio"
          content="Lorem ipsum dolor sit amet consectetur adipisicing elit. uasi distinctio dolores illo aspernatur facere eius magnam magni"
          src="https://images.lifestyleasia.com/wp-content/uploads/2019/10/18094733/1128_01_2610.jpg?tr=w-1600"
        />
      <div className="bg-white rounded-lg p-5 m-5">
        <div className="boxprofile-container">
          <div>
            <h1 className="text-2xl/tight font-bold"> {React.string("Profile")} </h1>
          </div>
          <div className="boxprofile-wrapper">
            <ListDetail 
              label="Name"
              content={user.fullName}
            />
            <ListDetail 
              label="Email"
              content={user.email}
            />
          </div>
          <div className="flex flex-wrap items-center justify-end gap-6 mt-8">
            <Button 
              onClick={onClick}
              label="Logout"
            />
          </div>
        </div>
      </div>
    </div>
  </div>
}

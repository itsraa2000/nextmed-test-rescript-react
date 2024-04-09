// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Input from "../../components/input/Input.res.mjs";
import * as React from "react";
import * as Button from "../../components/button/Button.res.mjs";
import * as CardLeft from "../../components/card/cardleft/CardLeft.res.mjs";
import * as CardRight from "../../components/card/cardright/CardRight.res.mjs";
import * as CardContainer from "../../components/card/cardcontainer/CardContainer.res.mjs";
import * as JsxRuntime from "react/jsx-runtime";
import * as RescriptReactRouter from "@rescript/react/src/RescriptReactRouter.res.mjs";

function SigninPage(props) {
  var match = React.useState(function () {
        return "";
      });
  var setEmail = match[1];
  var email = match[0];
  var match$1 = React.useState(function () {
        return "";
      });
  var setPwd = match$1[1];
  var pwd = match$1[0];
  var onClick = function (_evt) {
    var user = {
      email: email,
      pwd: pwd
    };
    console.log(user);
    RescriptReactRouter.push("/home");
  };
  return JsxRuntime.jsx("div", {
              children: JsxRuntime.jsxs(CardContainer.CardContainer.make, {
                    children: [
                      JsxRuntime.jsx(CardLeft.make, {
                            title: "Welcome back!!",
                            content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"
                          }),
                      JsxRuntime.jsxs(CardRight.make, {
                            header: "Sign Up",
                            subhead: "Welcome to ours members",
                            children: [
                              JsxRuntime.jsxs("div", {
                                    children: [
                                      JsxRuntime.jsx(Input.make, {
                                            label: "Email",
                                            type_: "text",
                                            name: "email",
                                            placeholder: "Enter your email",
                                            value: email,
                                            onChange: (function (e) {
                                                setEmail(e.target.value);
                                              })
                                          }),
                                      JsxRuntime.jsx(Input.make, {
                                            label: "Password",
                                            type_: "password",
                                            name: "pwd",
                                            placeholder: "Enter your password",
                                            value: pwd,
                                            onChange: (function (e) {
                                                setPwd(e.target.value);
                                              })
                                          })
                                    ],
                                    className: "login-section"
                                  }),
                              JsxRuntime.jsxs("div", {
                                    children: [
                                      JsxRuntime.jsxs("p", {
                                            children: [
                                              "Don't have an account?",
                                              JsxRuntime.jsx("a", {
                                                    children: "Sign Up",
                                                    className: "ms-2 underline text-sky-600",
                                                    href: "/signup"
                                                  })
                                            ],
                                            className: "text-sm text-gray-500"
                                          }),
                                      JsxRuntime.jsx(Button.make, {
                                            label: "Sign in",
                                            onClick: onClick
                                          })
                                    ],
                                    className: "flex flex-wrap items-center justify-between gap-6 mt-8"
                                  })
                            ]
                          })
                    ]
                  }),
              className: "login-page"
            });
}

var make = SigninPage;

export {
  make ,
}
/* Input Not a pure module */

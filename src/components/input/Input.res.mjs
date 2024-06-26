// Generated by ReScript, PLEASE EDIT WITH CARE

import * as JsxRuntime from "react/jsx-runtime";

function Input(props) {
  return JsxRuntime.jsxs("div", {
              children: [
                JsxRuntime.jsx("label", {
                      children: props.label,
                      className: "font-medium text-sm block mb-2"
                    }),
                JsxRuntime.jsx("input", {
                      className: "text-gray-500 border-gray-300 bg-gray-100 text-sm rounded-lg py-2.5 px-4 w-full",
                      name: props.name,
                      placeholder: props.placeholder,
                      type: props.type_,
                      value: props.value,
                      onChange: props.onChange
                    })
              ]
            });
}

var make = Input;

export {
  make ,
}
/* react/jsx-runtime Not a pure module */

// Generated by ReScript, PLEASE EDIT WITH CARE

import * as JsxRuntime from "react/jsx-runtime";

function ListDetail(props) {
  return JsxRuntime.jsxs("div", {
              children: [
                JsxRuntime.jsx("label", {
                      children: props.label,
                      className: "font-medium text-sm block mb-2"
                    }),
                JsxRuntime.jsx("div", {
                      children: JsxRuntime.jsx("p", {
                            children: props.content,
                            className: "text-gray-500 text-m rounded-lg py-2.5 px-4 w-full"
                          }),
                      className: "w-full h-full border border-gray-200 rounded-xl"
                    })
              ]
            });
}

var make = ListDetail;

export {
  make ,
}
/* react/jsx-runtime Not a pure module */

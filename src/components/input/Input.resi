@react.component
let make: (
  ~label: string,
  ~type_: string,
  ~name: string,
  ~placeholder: string,
  ~value: string,
  ~onChange: (JsxEvent.Form.t) => unit
) => Jsx.element
@react.component
let make: (
  ~label: string,
  ~onClick: (JsxEvent.Mouse.t) => unit,
) => Jsx.element
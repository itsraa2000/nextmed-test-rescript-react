@react.component
let make: (
  ~label: string,
  ~type_: string,
  ~name: string,
  ~placeholder: string,
) => Jsx.element
@react.component
let make: (
  ~header: string,
  ~subhead: string,
  ~children: React.element,
) => Jsx.element
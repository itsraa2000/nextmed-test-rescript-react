
@react.component
let make = (
  ~label,
  ~onClick,
) => {
  <div className="flex justify-end items-center gap-6 mt-8">
  <button
    onClick={onClick}
    className="bg-sky-600 text-white text-sm rounded-lg px-6 py-2.5 hover:bg-sky-700 hover:shadow-sm"
  >{React.string(label)}</button>
  </div>
}

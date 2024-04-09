 @react.component
let make = (
  ~label,
  ~type_,
  ~name,
  ~placeholder,
  ~value,
  ~onChange,
) => {         
    <div>
        <label className="font-medium text-sm block mb-2">
        {React.string(label)}
        </label>
        <input
            className="text-gray-500 border-gray-300 bg-gray-100 text-sm rounded-lg py-2.5 px-4 w-full"
            type_={type_}
            name={name}
            placeholder={placeholder}
            value={value}
            onChange={onChange}
        />
    </div>    
}
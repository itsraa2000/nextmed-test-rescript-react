 @react.component
let make = (
  ~label,
  ~content,
) => {         
    <div>
        <label className="font-medium text-sm block mb-2"> {React.string(label)} </label>
            <div className="w-full h-full border border-gray-200 rounded-xl">
                <p className="text-gray-500 text-m rounded-lg py-2.5 px-4 w-full">
                  {React.string(content)}
                </p>
            </div>
    </div> 
}
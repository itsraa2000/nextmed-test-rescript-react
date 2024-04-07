 @react.component
let make = (
  ~title,
  ~content,
  ~src,
) => {         
 <div className="bg-white rounded-lg p-5 m-5">
    <div className="bio-container">
        <div className="space-y-1 mt-1 grid">
            <div
                className=" justify-self-center w-[72px] h-[72px] rounded-full border border-gray-200">
                <img
                  className="w-full h-full rounded-full"
                  src={src}
                />
            </div>
              <label className="font-medium text-sm block mb-2"> {React.string(title)} </label>
              <div className=" w-full h-full border border-gray-200 rounded-xl ">
                <p className="text-gray-500 text-m rounded-lg py-2 px-2 w-full">
                  {React.string(content)}
                </p>
            </div>
        </div>
    </div>
</div>
}
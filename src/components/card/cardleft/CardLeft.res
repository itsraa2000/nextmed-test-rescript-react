 @react.component
let make = (
  ~title,
  ~content,
) => {         
    <div className="xl:col-span-2 lg:col-span-1 hidden lg:block">
        <div className="login-left">
            <span className="font-semibold tracking-widest uppercase">
              {React.string("Nextmed")}
            </span>
            <div>
                <h1 className="text-3xl/tight mb-4">{React.string(title)}</h1>
                <p className="text-gray-200 font-normal leading-relaxed">
                 {React.string(content)}
                </p>
            </div>
        </div>
    </div>
}
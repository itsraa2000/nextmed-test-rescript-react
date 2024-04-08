@react.component
  let make = (~header,~subhead,~children) => {
    <div className="boxregister-container">
        <div>
        <h1 className="text-2xl/tight mb-3">{React.string(header)}</h1>
        <p className="text-sm font-medium leading-relaxed">
            {React.string(subhead)}
        </p>
        </div>
        children
    </div>        
  }


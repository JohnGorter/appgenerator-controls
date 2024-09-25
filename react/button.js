//#pragma: declaration
let MYButton = ({click, children}) => <button onClick={click}>{children}</button>
    

//#pragma: execution
<div>Button <MYButton click={() => {##TRIGGERS##}}>[[label]]</MYButton></div>
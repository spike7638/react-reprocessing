// %%raw(`
// import './App.css';
// `)

 // NEED to get rid of local state here in the controls, or at least
 // update the global state as well when we update the local one
 
@react.component
let make = (~state: Store.state, ~dispatch: Store.action => unit) => {
  <main>
    <div className="Controls">
      <header className="Controls-header">
        <div>
        <button onClick={_ => {          
          dispatch(
            Store.ChangeValue({counter:state.data.counter - 10}),
          )  
        }}> 
        {React.string("Decrement")} 
        </button>

        <span className="counter"> {state.data.counter->string_of_int->React.string} </span>
        
        <button onClick={ _ => {
          dispatch(
            Store.ChangeValue({counter:state.data.counter + 10}),
          )
        }}> 
        {React.string("Increment")} 
        </button>
      </div>
      </header>
    </div>
  </main>
}

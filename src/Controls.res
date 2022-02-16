// %%raw(`
// import './App.css';
// `)

type state = {count: int}

let {useReducer} = module (React.Uncurried)
let {string} = module (React)
let {render,querySelector} = module (ReactDOM )
let initialState = {count: 100}
let reducer = (state, action) =>
  switch action {
  | #Increment => {count: state.count + 10}
  | #Decrement => {count: state.count - 10}
  }
 
 
@react.component
let make = () => {
  let (state, dispatch) = useReducer(reducer, initialState)
  <main>
    <div className="Controls">
      <header className="Controls-header">
        <div>
        <button onClick={_ => dispatch(.#Decrement)}> {string("Decrement")} </button>
        <span className="counter"> {state.count->string_of_int->string} </span>
        <button onClick={_ => dispatch(.#Increment)}> {string("Increment")} </button>
      </div>
      </header>
    </div>
  </main>
}

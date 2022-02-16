// %%raw(`
// import './App.css';
// `)
// The "target" for the controls
// Controls: increase or decrease value by 10; display base value
// Target: take example from Controls and then increase or decrease it by 1. ; display computed value
// Example: if controls shows 20 and Target shows 23 ...
// .. and target+ button is pressed, Target shows 24. Then if controls+ button is pressed, 
// .. controls shows 30, and target shows 34. 
// So (roughly) Target's value is "local" and "Control's" value is part of global state
type state = {count: int}

let {useReducer} = module (React.Uncurried)
let {string} = module (React)
let {render,querySelector} = module (ReactDOM )
let initialState = {count: 100}
let reducer = (state, action) =>
  switch action {
  | #Increment => {count: state.count + 1}
  | #Decrement => {count: state.count - 1}
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

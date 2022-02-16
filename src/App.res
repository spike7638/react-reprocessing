/*@react.component
let make = () => {
  let url = RescriptReactRouter.useUrl()

  switch url.path {
  | list{"recipes", "add"} => <div> {React.string("Add Recipe")} </div>
  | list{"recipes", title} => <div> {React.string("View Recipe " ++ title)} </div>
  | list{"tags"} => <div> {React.string("All tags")} </div>
  | list{} => <div> {React.string("Home page")} </div>
  | _ => <div> {React.string("Route not found")} </div>
  }
}

%%raw(`
// import logo from './logo.svg'; // commented out and replaced with next line
import './App.css';
`)
*/

// seems to work to import css; there's probably a more rescript-y way to do this.
%%raw(`
import './App.css';
`)

@module("./logo.svg") external logo: string = "default"
 
@react.component
let make = () => {
  (
    <div className="App">
    <Square />
      <header className="App-header">
        // <img src={logo} className="App-logo" alt="logo" />
        <p>
        {React.string("Edit ")}
        <code>{React.string("src/App.res")}</code>
        {React.string(" and save to reload.")}
        </p>
        
      </header>
    </div>
  );
}

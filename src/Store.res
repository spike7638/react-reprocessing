open Belt

type settings = {
  counter: int, // add more later
 }

type state = {
  data: settings,
  svg: string,
  // add another field here -- probably using Belt.Map.String (or just Belt.Map) as https://github.com/dusty-phillips/rescript-react-intro src/Store.res --
  // to save the current state of the drawing, even if the user resizes the drawer, etc. 
}

let initialState: state = {
  data: {counter:100},
  svg: "", 
}

type action =
  | ChangeValue({counter: int})
//   | UpdateSVG({recipeTitle: string, tag: string})

let updateCounter: int => state = (count: int) => {
  {
    data: {counter: count},
    svg: "",
  }
}


let reducer = (state: state, action: action) => {
  switch action {
  | ChangeValue({counter}) => updateCounter(counter)
//   | AddTag({recipeTitle, tag}) => addTag(state, recipeTitle, tag)
  }
}

open Reprocessing;

let setup = (env) => {
// I'd like to change this ~width to be the value 
// provided by the "increase/descrease width" buttons
// (which would require re-starting this program)
  Env.size(~width=200, ~height=200, env);
};

let draw = (_state, env) => {
  Draw.background(Constants.red, env);
  Draw.fill(Constants.green, env);
  // Same here: I'd like to adjust one of the "50s" below 
  // by the value in the "adjust rectangle" buttons
  Draw.rect(~pos=(50, 50), ~width=100, ~height=100, env)
};
 

run(~setup, ~draw, ());  
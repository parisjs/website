module Styles = {
  open Emotion
  let container = css({
    "padding": "20px 10px",
    "textAlign": "center",
    "color": "rgba(0, 0, 0, 0.5)",
  })
}

@react.component
let make = () => {
  <footer className=Styles.container> {"Made with 🩷 in Paris"->React.string} </footer>
}

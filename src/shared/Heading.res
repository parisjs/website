module Styles = {
  open Emotion
  let container = css({
    "backgroundColor": Theme.lightGray,
    "padding": "10vh 0",
  })
  let logo = css({
    "maxWidth": 250,
  })
  let hero = css({
    "fontFamily": "Poppins",
    "fontSize": 40,
    "color": Theme.purple,
    "margin": 0,
    "@media(max-width: 800px)": {
      "fontSize": 30,
    },
  })
  let description = css({
    "fontSize": 18,
  })
}

@react.component
let make = (~title) => {
  <header className=Styles.container>
    <WidthContainer>
      <h2 className=Styles.hero> {title->React.string} </h2>
    </WidthContainer>
  </header>
}

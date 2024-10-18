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
  })
  let description = css({
    "fontSize": 18,
  })
  let callToAction = css({
    "textDecoration": "none",
    "backgroundColor": Theme.pink,
    "color": Theme.white,
    "display": "inline-flex",
    "padding": "15px 40px",
    "fontFamily": "Poppins",
    "fontSize": 20,
    "fontWeight": "700",
    "borderRadius": 5,
    "@media(max-width: 800px)": {
      "fontSize": 16,
    },
  })
}

@react.component
let make = () => {
  <header className=Styles.container>
    <WidthContainer>
      <h2 className=Styles.hero> {"Le meetup JavaScript parisien"->React.string} </h2>
      <p className=Styles.description>
        {"Le rendez-vous mensuel de la communauté JS parisienne, chaque dernier mercredi du mois."->React.string}
      </p>
      <div>
        <a target="_blank" href="https://www.meetup.com/paris-js/" className=Styles.callToAction>
          {"✨ Rejoindre le groupe Meetup"->React.string}
        </a>
      </div>
    </WidthContainer>
  </header>
}

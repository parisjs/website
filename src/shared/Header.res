module Styles = {
  open Emotion
  let container = css({
    "display": "flex",
    "flexDirection": "row",
    "alignItems": "center",
    "flexGrow": 1,
    "minHeight": "20vh",
    "justifyContent": "space-between",
    "padding": "20px 0",
    "backgroundColor": Theme.pink,
    "color": Theme.white,
    "@media (max-width: 600px)": {
      "flexDirection": "column",
      "justifyContent": "center",
    },
  })
  let contents = css({
    "display": "flex",
    "flexDirection": "row",
    "alignItems": "center",
    "justifyContent": "center",
    "textAlign": "center",
  })
  let logo = css({
    "display": "block",
    "maxWidth": 300,
    "margin": "0 auto",
  })
  let hero = css({
    "paddingLeft": 40,
  })
  let tagline = css({
    "fontFamily": "Poppins",
    "fontSize": 40,
    "margin": 0,
    "color": Theme.white,
  })
  let description = css({
    "fontSize": 18,
    "margin": 0,
  })
  let nav = css({
    "backgroundColor": Theme.purple,
  })
  let navContents = css({
    "display": "flex",
    "flexDirection": "row",
    "@media(max-width: 800px)": {
      "flexDirection": "column",
    },
  })
  let navItem = css({
    "display": "block",
    "padding": "10px 20px",
    "fontFamily": "Poppins",
    "color": Theme.white,
    "textDecoration": "none",
    "fontSize": 20,
    "borderRadius": 5,
  })
  let navItemSmall = css({
    "display": "block",
    "padding": "10px 20px",
    "fontFamily": "Poppins",
    "color": Theme.white,
    "textDecoration": "none",
    "fontSize": 20,
    "borderRadius": 5,
    "opacity": 0.5,
  })
  let navItemActive = css({
    "backgroundColor": Theme.pink,
  })
  let spacer = css({
    "flexGrow": 1,
    "minWidth": 20,
  })
}

@react.component
let make = () => {
  <>
    <header className=Styles.container>
      <WidthContainer>
        <div className=Styles.contents>
          <h1>
            <Pages.Link href="/">
              <img src={"/images/parisjs-logo.svg"} alt="" className={Styles.logo} />
            </Pages.Link>
          </h1>
        </div>
      </WidthContainer>
    </header>
    <nav className=Styles.nav>
      <WidthContainer>
        <div className=Styles.navContents>
          <Pages.Link href="/" className=Styles.navItem activeClassName=Styles.navItemActive>
            {"Home"->React.string}
          </Pages.Link>
          <Pages.Link
            href="/code-of-conduct" className=Styles.navItem activeClassName=Styles.navItemActive>
            {"Code of Conduct"->React.string}
          </Pages.Link>
          <Pages.Link href="/faq" className=Styles.navItem activeClassName=Styles.navItemActive>
            {"FAQ"->React.string}
          </Pages.Link>
          <div className=Styles.spacer />
          <a target="_blank" className=Styles.navItemSmall href="https://www.meetup.com/paris-js/">
            {"Meetup"->React.string}
          </a>
          <a target="_blank" className=Styles.navItemSmall href="https://discord.gg/t6t8jhAaVz/">
            {"Discord"->React.string}
          </a>
          <a target="_blank" className=Styles.navItemSmall href="https://twitter.com/parisjs">
            {"Twitter"->React.string}
          </a>
          <a target="_blank" className=Styles.navItemSmall href="https://www.youtube.com/parisjs">
            {"YouTube"->React.string}
          </a>
        </div>
      </WidthContainer>
    </nav>
  </>
}

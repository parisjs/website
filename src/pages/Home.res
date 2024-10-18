module Styles = {
  open Emotion
  let block = css({
    "padding": "10vh 0",
  })
  let title = css({
    "fontFamily": "Poppins",
    "fontSize": 40,
    "color": Theme.pink,
    "margin": 0,
  })
  let row = css({
    "display": "flex",
    "flexDirection": "row",
    "alignItems": "flex-start",
    "@media(max-width: 800px)": {
      "flexDirection": "column",
    },
  })
  let contents = css({
    "flexGrow": 1,
    "padding": "0 30px",
  })
  let images = css({
    "width": "50%",
    "aspectRatio": "1024 / 768",
    "position": "relative",
    "@media(max-width: 800px)": {
      "width": "80%",
      "order": -4,
      "margin": "0 auto 20px",
    },
  })
  let image = css({
    "position": "absolute",
    "objectFit": "contain",
    "top": 0,
    "left": 0,
    "borderRadius": 15,
    "width": "100%",
    "height": "auto",
  })
  let image1 = cx([
    image,
    css({
      "transform": "scale(0.75) translate(-20px, -20px)",
    }),
  ])
  let image2 = cx([
    image,
    css({
      "transform": "scale(0.5) translate(50%, 50%) translate(20px, 40px)",
    }),
  ])
  let image3 = cx([
    image,
    css({
      "transform": "scale(0.5) translate(-50%, 50%) translate(-20px, -20px)",
    }),
  ])
  let paragraph = css({
    "lineHeight": "1.5",
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
  <>
    <Hero />
    <div className=Styles.block>
      <WidthContainer>
        <div className=Styles.row>
          <div className=Styles.images>
            <img className=Styles.image1 src="/images/talk-1.jpg" width="1024" height="768" />
            <img className=Styles.image2 src="/images/talk-2.jpg" width="1024" height="768" />
            <img className=Styles.image3 src="/images/talk-3.jpg" width="1024" height="768" />
          </div>
          <div className=Styles.contents>
            <h2 className=Styles.title> {"Talks"->React.string} </h2>
            <p className=Styles.paragraph>
              {"Retours d'expérience sur des sujets variés, techniques ou pas."->React.string}
            </p>
            <a
              target="_blank"
              href="https://github.com/parisjs/talks/issues/new?assignees=&labels=&template=cfp.yml"
              className=Styles.callToAction>
              {"💬 Proposer un talk"->React.string}
            </a>
          </div>
        </div>
      </WidthContainer>
    </div>
    <div className=Styles.block>
      <WidthContainer>
        <div className=Styles.row>
          <div className=Styles.contents>
            <h2 className=Styles.title> {"Networking"->React.string} </h2>
            <p className=Styles.paragraph>
              {"Après les talks, rencontrez la communauté autour d'un buffet pour échanger."->React.string}
            </p>
            <a
              href="https://github.com/parisjs/hosting/issues/new?assignees=&labels=&template=hosting.yml"
              target="_blank"
              className=Styles.callToAction>
              {"🏢 Héberger le meetup"->React.string}
            </a>
          </div>
          <div className=Styles.images>
            <img className=Styles.image1 src="/images/networking-1.jpg" width="1024" height="768" />
            <img className=Styles.image2 src="/images/networking-2.jpg" width="1024" height="768" />
            <img className=Styles.image3 src="/images/networking-3.jpg" width="1024" height="768" />
          </div>
        </div>
      </WidthContainer>
    </div>
  </>
}

module Styles = {
  open Emotion
  let loader = css({
    "padding": "10vh 0",
    "display": "flex",
    "alignItems": "center",
    "justifyContents": "center",
    "flexGrow": 1,
  })
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
  })
  let contents = css({
    "flexGrow": 1,
    "padding": "0 30px",
  })
  let image = css({
    "borderRadius": 15,
  })
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
  })
}
@react.component
let make = () => {
  let article = Pages.useItem("pages", ~id="code-of-conduct")

  <>
    {switch article {
    | NotAsked | Loading =>
      <div className=Styles.loader>
        <Pages.ActivityIndicator />
      </div>
    | Done(Error(_)) =>
      <div className=Styles.loader>
        <Pages.ErrorIndicator />
      </div>
    | Done(Ok({title, body})) =>
      <>
        <Heading title />
        <div className=Styles.block>
          <WidthContainer>
            <div dangerouslySetInnerHTML={{"__html": body}} />
          </WidthContainer>
        </div>
      </>
    }}
  </>
}

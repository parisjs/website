type props = Pages.App.appProps

Emotion.injectGlobal(
  `
	html, body {
		margin: 0;
		padding: 0;
		font-family: Hack, monospace;
	}

  body {
    display: flex;
    flex-direction: column;
    min-height: 100vh;
  }

  h2, h3, h4 {
    font-family: "Poppins", sans-serif;
    color: ${Theme.purple};
  }

  a {
    color: ${Theme.pink};
  }

  p, li {
    line-height: 1.5;
  }

	@font-face {
    font-family: "Poppins";
    font-weight: 700;
    font-style: normal;
    src: url("/fonts/poppins-bold.woff2") format("woff2");
    font-display: swap;
	}

	@font-face {
    font-family: "Hack";
    font-weight: 400;
    font-style: normal;
    src: url("/fonts/hack-regular.woff2") format("woff2");
    font-display: swap;
	}

	@font-face {
    font-family: "Hack";
    font-weight: 700;
    font-style: normal;
    src: url("/fonts/hack-bold.woff2") format("woff2");
    font-display: swap;
	}
`,
)

let make = ({url, config}: props) => {
  React.useEffect1(() => {
    let () = globalThis["scrollTo"](0, 0)
    None
  }, [url.path->List.toArray->Array.join("/")])

  <>
    <div>
      <Pages.Head>
        <html lang="en" />
        <meta charSet="UTF-8" />
        <meta
          name="viewport"
          content="width=device-width, initial-scale=1, shrink-to-fit=no, viewport-fit=cover"
        />
        <meta name="twitter:card" content="summary_large_image" />
        <meta property="og:type" content="website" />
        <meta property="og:image" content={config.baseUrl ++ "/images/share.jpg"} />
        <meta name="twitter:image" content={config.baseUrl ++ "/images/share.jpg"} />
        <meta name="twitter:site" content="@ParisJS" />
        <meta property="og:image:width" content="1500" />
        <meta property="og:image:height" content="777" />
        <link rel="shortcut icon" href="/images/favicon.png" />
        {
          let url = config.baseUrl ++ ("/" ++ url.path->List.toArray->Array.join("/"))
          <link rel="canonical" href={url->String.endsWith("/") ? url : url ++ "/"} />
        }
      </Pages.Head>
      <Header />
      <div key={url.path->List.toArray->Array.join("/")}>
        {switch url.path {
        | list{} => <Home />
        | list{"code-of-conduct"} => <CodeOfConduct />
        | list{"faq"} => <Faq />
        | _ => React.null
        }}
      </div>
      <WidthContainer>
        <Footer />
      </WidthContainer>
    </div>
  </>
}

let default = Pages.make(
  make,
  {
    siteTitle: "Paris.JS - Le meetup mensuel autour du JavaScript",
    siteDescription: "Tous les derniers mercredis du mois.",
    mode: SPA,
    distDirectory: "dist",
    baseUrl: "https://parisjs.org",
    staticsDirectory: Some("statics"),
    paginateBy: 20,
    variants: [
      {
        subdirectory: None,
        localeFile: None,
        contentDirectory: "contents",
        getUrlsToPrerender: _ => Belt.Array.concatMany([["/", "/code-of-conduct", "/faq"]]),
        getRedirectMap: None,
      },
    ],
  },
)

const _css =  require("../css/app.scss")


import "phoenix_html"

import React from "react"
import { render } from "react-dom"
import App from "./App"

render(<App />, document.getElementById('greeting'));
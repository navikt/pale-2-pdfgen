[![Build status](https://github.com/navikt/pale-2-pdfgen/workflows/Deploy%20to%20dev%20and%20prod/badge.svg)](https://github.com/navikt/pale-2-pdfgen/workflows/Deploy%20to%20dev%20and%20prod/badge.svg)
# Pale-2 PdfGen
Repository for pale-2 templates

## Technologies & Tools

* [pdfgen](https://github.com/navikt/pdfgen)
* [Docker](https://www.docker.com/)
* [Handlebars js](https://handlebarsjs.com/) 
* [Json](https://www.json.org/json-en.html)

#### Creating a docker image
Creating a docker image should be as simple as
```bash
docker build -t pale-2-pdfgen .
```

## Getting started
### Run in development mode
To run the application with templates, data and fonts locally mounted you can use the convenience script 
```bash 
./run_development.sh
```

When running the application you can use the env var `DISABLE_PDF_GET` to enable GET requests at
`/api/v1/genpdf/<application>/<template>` which looks for test data at `data/<application>/<template>.json` and outputs
a PDF to your browser. Additionally, the template folder will be fetched on every request, and reflect any changes made
since the last GET, making this ideal for developing new templates for your application.

The template and data directory structure both follow the `<application>/<template>` structure.
Example url: `http://0.0.0.0:8080/api/v1/genpdf/pale-2/pale-2`

## When upgrading pdfgen docker image

Remember that the version for the docker image is in 3 places, `Dockerfile` and 2 places in `run_development.sh`, remember to update all 3 places.

### Notes on developing templates on Windows
It is a known issue that pdfgen's output documents look different depending on whether the template
has `\r\n` or `\n` as line endings. Therefore, it is strongly recommended to configure Git to not convert newlines, as well as ensure that your editor ends its lines with LF (`\n`) and not CRLF (`\r\n`), as the former will accurately show what your
templates will look like in production.

### Contact

This project is maintained by [navikt/teamsykmelding](CODEOWNERS)

Questions and/or feature requests? Please create an [issue](https://github.com/navikt/pale-2-pdfgen/issues)

If you work in [@navikt](https://github.com/navikt) you can reach us at the Slack
channel [#team-sykmelding](https://nav-it.slack.com/archives/CMA3XV997)

FROM ghcr.io/navikt/pdfgen-rs:0.1.2

COPY templates /app/templates
COPY fonts /app/fonts
COPY resources /app/resources

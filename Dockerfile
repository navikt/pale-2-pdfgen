FROM ghcr.io/navikt/pdfgenrs:0.1.6

COPY templates /app/templates
COPY fonts /app/fonts
COPY resources /app/resources

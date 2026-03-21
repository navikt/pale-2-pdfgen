FROM ghcr.io/navikt/pdfgenrs:0.1.7

COPY templates /app/templates
COPY fonts /app/fonts
COPY resources /app/resources

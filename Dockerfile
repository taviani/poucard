FROM dunglas/frankenphp

ENV SERVER_NAME=lenomdemonsite.com
ENV APP_RUNTIME=Runtime\\FrankenPhpSymfony\\Runtime
ENV APP_ENV=prod


# Prepare the app
COPY . /app/
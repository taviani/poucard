FROM dunglas/frankenphp

ENV SERVER_NAME=your-domain-name.example.com
ENV APP_RUNTIME=Runtime\\FrankenPhpSymfony\\Runtime
ENV APP_ENV=prod

COPY . /app/
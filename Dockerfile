FROM dunglas/frankenphp

ENV SERVER_NAME=your-domain-name.example.com
ENV APP_RUNTIME=Runtime\\FrankenPhpSymfony\\Runtime
ENV APP_ENV=prod

# add additional extensions here:
RUN install-php-extensions \
    sqlite \
    gd \
    intl \
    zip \
    opcache

COPY . /app/
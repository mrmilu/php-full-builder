FROM bartos/php-builder

RUN apk update &&
    apk add --no-cache \
    ruby \
    ruby-dev  \
    build-base \
    libnotify \
    autoconf \
    nasm \
    automake

RUN gem install rdoc

RUN gem install sass

RUN ln -s /usr/bin/sass /usr/local/bin/sass

RUN npm install -g \
    uglifycss \
    uglify-js \
    gulp \
    notify-send \
    gulp-notify

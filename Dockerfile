FROM perl:5.20

RUN cpanm --install --notest \
        DBIx::Class \
        Mojolicious@8.71 \
        Digest::CRC \
        Data::Dumper \
        HTML::Entities \
        Email::Valid \
        Crypt::PBKDF2


EXPOSE 8080/tcp

WORKDIR /usr/src/web-notes

COPY . .

CMD ["hypnotoad", "./script/notes"]


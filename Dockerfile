FROM perl:5.20

RUN cpanm --install --notest \
        DBIx::Class \
        Mojolicious \
        Digest::CRC \
        Data::Dumper \
        HTML::Entities \
        Email::Valid \
        Crypt::PBKDF2


EXPOSE 8080/tcp

WORKDIR /usr/src/web_notes

COPY . .

CMD ["hypnotoad", "-f",  "./script/notes"]


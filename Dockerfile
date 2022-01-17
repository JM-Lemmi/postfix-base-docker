FROM alpine

RUN apk add --no-cache --update postfix
RUN postconf -e "maillog_file=/dev/stdout"

CMD postfix start
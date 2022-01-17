FROM alpine

RUN apk add --no-cache --update postfix
RUN postconf -e "maillog_file=/var/log/maillog"

CMD postfix start
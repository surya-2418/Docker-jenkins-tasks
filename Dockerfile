FROM alpine:latest

RUN apk --update add ruby 

WORKDIR /app

COPY  . /app

CMD ["ruby", "simple_program.rb"]
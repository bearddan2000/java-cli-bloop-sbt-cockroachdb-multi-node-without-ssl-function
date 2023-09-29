FROM eed3si9n/sbt

# install bloop server
RUN apk update \
  && wget -O /usr/bin/coursier https://git.io/coursier-cli && chmod +x /usr/bin/coursier \
  && coursier install --dir /usr/bin bloop --only-prebuilt=true \
  && coursier bootstrap bloop --standalone -o bloop

WORKDIR /tmp

COPY bin/ .

RUN sbt bloopInstall

RUN bloop compile root

RUN bloop run root

CMD [""]

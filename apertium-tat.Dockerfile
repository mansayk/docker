FROM apertium/base:latest
LABEL maintainer https://github.com/mansayk
ENV LANG C.UTF-8

RUN apt-get update && \
	apt-get install -y apertium-tat && \
	rm -rf /var/lib/apt/lists/*

RUN groupadd -r user && useradd --no-log-init -d /home/user -r -g user user

WORKDIR /home/user

COPY ./entrypoint.sh .
ENTRYPOINT ["./entrypoint.sh"]

FROM ubuntu:22.04

LABEL maintainer="JSHE"

COPY build-linux-x86_64.sh build-linux-x86_64.sh

RUN sed -i '1,4d' build-linux-x86_64.sh && \
	apt update && \
	apt -y upgrade && \
	apt -y install git &&\
	apt -y install hugo=0.92.2-1ubuntu0.1 &&\
	echo "hugo server --bind=0.0.0.0 --source hugoServer/mycv" >> build-linux-x86_64.sh

CMD ["bash","build-linux-x86_64.sh"]

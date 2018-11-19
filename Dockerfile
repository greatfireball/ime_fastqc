ARG osversion=xenial-20181005
FROM ubuntu:${osversion}

ARG VERSION=master
ARG VCS_REF
ARG BUILD_DATE

RUN echo "VCS_REF: "${VCS_REF}", BUILD_DATE: "${BUILD_DATE}", VERSION: "${VERSION}

LABEL maintainer="frank.foerster@ime.fraunhofer.de" \
      description="Dockerfile providing the FastQC software package" \
      version=${VERSION} \
      org.label-schema.vcs-ref=${VCS_REF} \
      org.label-schema.build-date=${BUILD_DATE} \
      org.label-schema.vcs-url="https://github.com/greatfireball/ime_fastqc.git"

RUN   apt --yes update && \
      apt --yes install --no-install-recommends --no-install-suggests \
        ca-certificates \
	curl \
	default-jre \
	perl \
	unzip && \
      apt --yes autoremove && \
      apt --yes autoclean && \
      apt --yes clean && \
      rm -rf /var/lib/apt/lists/*

RUN   curl -S http://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.8.zip -o /tmp/fastqc.zip && \
      unzip -d /usr/local/src /tmp/fastqc.zip && \
      chmod +x /usr/local/src/FastQC/fastqc && \
      ln -s /usr/local/src/FastQC/fastqc /usr/local/bin/fastqc && \
      rm -f /tmp/fastqc.zip

VOLUME /data
WORKDIR /data

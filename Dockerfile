FROM amazonlinux

RUN yum update -y && yum install -y unzip net-utils iputils
RUN curl -O https://releases.hashicorp.com/serf/0.8.1/serf_0.8.1_linux_amd64.zip && \
    unzip serf_0.8.1_linux_amd64.zip && \
    mv serf /usr/local/bin

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh", "cluster1"]

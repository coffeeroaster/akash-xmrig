from ubuntu:20.04


ADD https://github.com/just-containers/s6-overlay/releases/download/v2.2.0.1/s6-overlay-amd64-installer /tmp/
ADD https://github.com/xmrig/xmrig/releases/download/v6.11.2/xmrig-6.11.2-linux-static-x64.tar.gz /root
#ADD locallybuilt/xmrig.copy /root/xmrig.debug
ADD services.d/xmrig /root/run.sh
ADD configs/*.json /root/
RUN apt-get -y update && apt-get -y install patchutils python3
RUN chmod +x /tmp/s6-overlay-amd64-installer && /tmp/s6-overlay-amd64-installer /
RUN tar -xzf /root/xmrig-6.11.2-linux-static-x64.tar.gz --strip-components 1 -C /root
RUN ls -l /root/
RUN chmod 755 /root/run.sh
ENTRYPOINT ["/root/run.sh"]

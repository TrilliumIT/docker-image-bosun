FROM debian:jessie
ADD https://github.com/bosun-monitor/bosun/releases/download/0.5.0-rc2/bosun-linux-amd64 /bosun
RUN ["chmod", "+rx", "/bosun"]
WORKDIR /data
ENTRYPOINT ["/bosun", "-disable-syslog"]
CMD ["-h"]
EXPOSE 8070
VOLUME /data

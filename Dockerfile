FROM alpine
RUN apk --no-cache --upgrade add samba samba-common-tools samba-server
COPY smb.conf /etc/samba/
COPY smbusers /etc/samba/
EXPOSE 445/tcp 139/tcp 445/udp 445/tcp
ENTRYPOINT ["smbd", "--foreground", "--log-stdout", "--no-process-group"]
CMD []

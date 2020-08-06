# Setting up samba server on a Raspberry pi 

The samba server is based on alpine image. The users configuration need to be added separately and assign respective passwords for them to access. The share path has to be modified in the docker-compose.yml file accordingly.

## User add in alpine image
Enter the container 
```
docker exec -it samba sh
```

Create user based on the smb.conf and smbusers file you had copied already. This will prompt for password.
```
adduser test
```

assign password for samba share. 
```
smbpasswd -a test
```

you should be all set now to access.

## Add the share on devices

To mount the samba share on linux based distros using mount command
```
sudo mount -t cifs -o username=<username> //<ip address>/<sharename> <local directory>/

example:
sudo mount -t cifs -o username=test //192.1.1.2/homeshare test/
```
## Formatting an HDD and mouting it onto the Pi
## Reference
* https://wiki.alpinelinux.org/wiki/Setting_up_a_samba-server
* https://wiki.alpinelinux.org/wiki/Setting_up_a_new_user



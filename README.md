![https://linuxserver.io](https://www.linuxserver.io/wp-content/uploads/2015/06/linuxserver_medium.png)

The [LinuxServer.io](https://linuxserver.io) team brings you another container release featuring easy user mapping and community support. Find us for support at:
* [forum.linuxserver.io](https://forum.linuxserver.io)
* [IRC](https://www.linuxserver.io/index.php/irc/) on freenode at `#linuxserver.io`
* [Podcast](https://www.linuxserver.io/index.php/category/podcast/) covers everything to do with getting the most from your Linux Server plus a focus on all things Docker and containerisation!

# linuxserver/plexemail

Is a script that aggregates all new TV and movie releases for the past x days then writes to your web directory and sends out an email.

## Usage

```
docker create --name=plexemail \
-v <path to config>:/config \
-v <path to "Plex Media Server" folder>:/plex \
-e PGID=<gid> \
-e PUID=<uid>  \
-e TZ=<timezone> \
-p 80:80 \
linuxserver/plexemail
```

**Parameters**

* `-p 80` - the port(s)
* `-v /config` - PlexEmail config folder
* `-v /plex` - "Plex Media Server" folder from Plex server
* `-e PGID` for GroupID - see below for explanation
* `-e PUID` for UserID - see below for explanation
* `-e TZ` for timezone information, eg Europe/London

It is based on alpine linux with s6 overlay, for shell access whilst the container is running do `docker exec -it plexemail /bin/bash`.

### User / Group Identifiers

Sometimes when using data volumes (`-v` flags) permissions issues can arise between the host OS and the container. We avoid this issue by allowing you to specify the user `PUID` and group `PGID`. Ensure the data volume directory on the host is owned by the same user you specify and it will "just work" ™.

In this instance `PUID=1001` and `PGID=1001`. To find yours use `id user` as below:

```
  $ id <dockeruser>
    uid=1001(dockeruser) gid=1001(dockergroup) groups=1001(dockergroup)
```

## Setting up the application 

Edit the config.conf in the /config folder.

Update the /config/cron/plexemail as necessary, restart the container for any changes to take effect.

See project GIT for more information on configuration: https://github.com/jakewaldron/PlexEmail

** Important note for unraid users or those running services such as a webserver on port 80, change port 80 assignment **

## Info

* To monitor the logs of the container in realtime `docker logs -f plexmail`.

## Versions
+ **20.08.16:** Rebase to alpine
+ **10.11.15:** Initial Release 

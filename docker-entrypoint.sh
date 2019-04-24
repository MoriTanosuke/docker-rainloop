#!/bin/sh

chown -R apache:apache ${RAINLOOP_HOME}

find ${RAINLOOP_HOME} -type d -exec chmod 755 {} \;
find ${RAINLOOP_HOME} -type f -exec chmod 644 {} \;

exec /usr/sbin/httpd -D FOREGROUND

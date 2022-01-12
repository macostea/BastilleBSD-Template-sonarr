#!/bin/sh

. /etc/rc.subr

name="sonarr"
rcvar="${name}_enable"
load_rc_config $name

start_cmd="${name}_start"
stop_cmd="${name}_stop"

sonarr_start()
{
    /usr/sbin/daemon -f -p /usr/local/sonarr/sonarr.pid /usr/local/bin/mono --debug /app/Sonarr.exe -nobrowser
}

sonarr_stop()
{
   pid=`cat /usr/local/sonarr/sonarr.pid`
   kill -9 ${pid}

   wait_for_pids ${pid}
   echo "Stopped"
}
run_rc_command "$@"

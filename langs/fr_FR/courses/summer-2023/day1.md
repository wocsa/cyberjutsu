# Cyberjūtsu v1.0 Summer 2023 Day 1

## Background

Introduction from WOCSA on [principle](../../principle.md). Morning Karate course
with [Lionel Froidure](https://www.lionelfroidure.com/a-propos/) about
[Mikiri](../../glossary.md#mikiri) concept.

## Warmup

### Eyes

* look at top right, bottom left, bottom right, top left (x5)
* draw a circle with your Eyes both sens (x5)
* draw an infinity sign with your eyes (∞) (x5)

### Hands

* Roll your fingers one by one foreward and backward both hands (x5)
* touch with thumb each of your fingers both hands foreward and backward (x2)
* join same finger of each hand with the other, then dismiss couple one by one
foreward and ackward (x2)
* listen to Sensei number (1 to 5) and dismiss related fingers

### Combined

* with partner tori move fingers, uke must follow with the eyes

### Dactylographie

* placez vos doigts sur chaque zone du clavier [voir l'image ici Chapitre 1,
Sous-chapitre 1](https://www.wikihow.com/Type#Learning-to-Type)
* tapez toutes les lettres de l'alphabet une par une zone par zone de gauche à
droite (toutes les touches pour un doigt puis passez au suivant) en arrière et
en avant [voir l'image ici Chapitre 1, Sous-chapitre
4](https://www.wikihow.com/Type#Learning-to-Type) (x10)
* with above method type as fast as possible command said by the Sensei then
press enter read the first word on the prompted result (x10)
   * w, ls, cd, ps, dir, clear, echo, history, env, who, fortune, find
   * ps -aux, ls -lai, cd .., dir /*, htop

## Kōgeki Waza

### Network Service Discovery [T1046](https://attack.mitre.org/techniques/T1046/)

#### uke

uke provide his cyberdeck ip address to tori

```bash
ip -color=auto addr # or ip a
```

#### tori

*tori* try to find open ports on cyberdeck of *uke*.

```bash
nmap $UKE_IP_ADRESS
```

tori identify service keywords en port numbers.

### Uchikomi (x10 by exercise by partner)

## Yomi Waza

### Connection Attempt Analysis
[D3-CAA](https://d3fend.mitre.org/technique/d3f:ConnectionAttemptAnalysis)

#### tori

*tori* try to find when *uke* is performing scan

```bash
tail -f /var/log/syslog
```

#### uke

*uke* try to find open ports on cyberdeck of *tori*.

```bash
nmap $TORI_IP_ADDRESS
```

#### tori

*tori* try to find ip adress of *uke* in logs that are displayed on cyberdeck
screen

```bash
un 23 13:03:30 cyberjutsu1 kernel: [ 3108.070285] INCOMING connection IN=wlan0 OUT= MAC=b8:27:eb:c5:65:83:b8:27:eb:d7:b4:0f:08:00 SRC=192.168.2.240 DST=192.168.2.145 LEN=60 TOS=0x00 PREC=0x00 TTL=64 ID=58603 DF PROTO=TCP SPT=54858 DPT=1131 WINDOW=64240 RES=0x00 SYN URGP=0 
Jun 23 13:03:30 cyberjutsu1 kernel: [ 3108.070333] INCOMING connection IN=wlan0 OUT= MAC=b8:27:eb:c5:65:83:b8:27:eb:d7:b4:0f:08:00 SRC=192.168.2.240 DST=192.168.2.145 LEN=60 TOS=0x00 PREC=0x00 TTL=64 ID=17630 DF PROTO=TCP SPT=60518 DPT=6668 WINDOW=64240 RES=0x00 SYN URGP=0
```

### Uchikomi (x10 by exercise by partner)

### Yakusoku geiko

*Tori* try to scan ports one by one randomly and *Uke* try to guess the number.
After a while roles are exchanged.

### Log Monitoring

Tori and Uke split screen with two cli.

```bash
screen
```

Press return if paragraph is prompted. *Ctrl+a* then *Ctrl+|* #split screen in
two part. *Ctrl+a* then *Tab* to switch to next part of the screen. *Ctrl+a*
then *Ctrl+c* to create bash cli in black part of the screen.

Launch Yomi Waza Log Monitoring.

```bash
tail -f /var/log/syslog
```

*Ctrl+a* then *Tab* to return to available cli.

### Remote Terminal Session Detection
[D3-RTSD](https://d3fend.mitre.org/technique/d3f:RemoteTerminalSessionDetection)

#### Uke

*Uke* connect via ssh to *Tori* cyberdeck

```bash
ssh $TORI_USERNAME@$TORI_IP_ADDRESS
```

then run commands during *Tori* practice.

examples:

```bash
ls
pwd
uptime
uname
netstat
htop
```

#### Tori

*Tori* look at Yomi Waza Log Monitoring to catch *Uke* ssh connection (from right
side of the screen).

*Tori* list active sessions to identify TTY related to *Uke* ssh connection.

```bash
w
```

### Session Shoulder Surfing

#### Uke

*Uke* connect via ssh to *Tori* cyberdeck

```bash
ssh $TORI_USERNAME@$TORI_IP_ADDRESS
```

then run commands during *Tori* practice.

examples:

```bash
ls
pwd
uptime
uname
netstat
htop
```

#### Tori

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

### Uchikomi (x10 by exercise by partner)

### Yakusoku geiko

*Tori* try to connect run the commands given by Sensei then disconnect without
been observed by *Uke* After a while roles are exchanged.

### Process Termination
[D3-PT](https://d3fend.mitre.org/technique/d3f:ProcessTermination/)

#### Uke

*Uke* connect via ssh to *Tori* cyberdeck

```bash
ssh $TORI_USERNAME@$TORI_IP_ADDRESS
```

then run commands during *Tori* practice.

examples:

```bash
ls
dir
ps
pwd
fortune
```

#### Tori

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

### Uke

Uke performs connection

### Tori

1. Tori performs connection at the same time as Uke
1. Tori performs (Process Termination)[day1.md#process-termination-d3-pt] on
local session of *Uke*

### Uchikomi (x10 by exercise by partner)

### Nagekomi (x10 by exercise by partner)

kill local session of the uke

### Yakusoku geiko

*Tori* try to connect and kill local session of the Uke

## Randori

Try to disconnect partner from all his sessions (local and remote). Try to
disconnect partner two times from your cyberdeck then kill local session of the
partner on his cyberdeck.

## Cooldown

### Eyes

* blinking
* hands on

### Hands

* strech your fingers in and out of your hands
* drop your hands and shake them

### body

* seated
   * strech arms forward
   * cross legs, put opposite hand on the leg, turn head on upper knee side, twist
knee opposite to the head then invert
   * move to the beginning of the chair, bend your back and put your hands on your
hips then stretch
* stand up
   * stretch arms to the top
   * cross arms to put hands on elbow, pull with the hand on top of the elbow to the
opposite side (invert)
   * pull up shoulders
   * join hands at the back on in front of your hips then extend left side of your
neck then right

## Mokusō

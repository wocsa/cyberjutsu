# Cyberjūtsu v1.0 Summer 2023 Day 1

## Background
Introduction from WOCSA on [principle](../../principle.md).
Morning Karate course with [Lionel Froidure]() about [Mikiri](../../glossary.md#mikiri) concept.

## Warmup

### Eyes
* look at top right, bottom left, bottom right, top left (x5)
* draw a circle with your Eyes both sens (x5)
* draw an infinity sign with your eyes (∞) (x5)
### Hands
* Roll your fingers one by one foreward and backward both hands (x5)
* touch with thumb each of your fingers both hands foreward and backward (x2)
* join same finger of each hand with the other, then dismiss couple one by one foreward and ackward (x2)
* listen to teacher number (1 to 5) and dismiss related fingers
### Combined 
* with partner tori move fingers, uke must follow with the eyes

### Typing
* put your fingers on each zone of the keyboard [see picture here Chapter 1, Sub Chapter 1](https://www.wikihow.com/Type#Learning-to-Type)
* type all alphabet letter one by one zone by zone from left to right (all key for one finger then move to next) backward and forward [see picture here Chapter 1, Sub Chapter 4](https://www.wikihow.com/Type#Learning-to-Type) (x10)
* with above method type as fast as possible command said by the teacher then press enter read the first word on the prompted result (x10)
  * w, ls, cd, ps, dir, clear, echo, history, env, who, fortune , find 
  * ps -aux, ls -lai, cd .., dir /*, htop

## Uchikomi (x10 by exercise by partner)

### Tori Waza

#### network scan
##### uke
uke provide his cyberdeck ip adress to tori
```bash
ip -color=auto addr # or ip a
```
##### tori
*tori* try to find open ports on cyberdeck of *uke*.
```bash
nmap $UKE_IP_ADRESS 
```
tori identify service keywords en port numbers.
### Yomi Waza

#### log exercise 1
##### tori
*tori* try to find when *uke* is performing scan
```bash
tail -f /var/log/syslog
```

##### uke
*uke* try to find open ports on cyberdeck of *tori*.
```bash
nmap $TORI_IP_ADRESS 
```

##### tori
*tori* try to find ip adress of *uke* in logs that are displayed on cyberdeck screen
```bash
un 23 13:03:30 cyberjutsu1 kernel: [ 3108.070285] INCOMING connection IN=wlan0 OUT= MAC=b8:27:eb:c5:65:83:b8:27:eb:d7:b4:0f:08:00 SRC=192.168.2.240 DST=192.168.2.145 LEN=60 TOS=0x00 PREC=0x00 TTL=64 ID=58603 DF PROTO=TCP SPT=54858 DPT=1131 WINDOW=64240 RES=0x00 SYN URGP=0 
Jun 23 13:03:30 cyberjutsu1 kernel: [ 3108.070333] INCOMING connection IN=wlan0 OUT= MAC=b8:27:eb:c5:65:83:b8:27:eb:d7:b4:0f:08:00 SRC=192.168.2.240 DST=192.168.2.145 LEN=60 TOS=0x00 PREC=0x00 TTL=64 ID=17630 DF PROTO=TCP SPT=60518 DPT=6668 WINDOW=64240 RES=0x00 SYN URGP=0
```

#### log exercise 2

##### tori
*tori* try to find when *uke* is performing scan
```bash
tail -f /var/log/syslog
```

##### uke
*uke* try to scan chosen range of port on cyberdeck of *tori*.
```bash
nmap -p$CHOSEN_PORT $UKE_IP_ADRESS 
```

##### tori
*tori* try to find which ports have been scanned by *uke* in logs that are displayed on cyberdeck screen
```bash
un 23 13:03:30 cyberjutsu1 kernel: [ 3108.070285] INCOMING connection IN=wlan0 OUT= MAC=b8:27:eb:c5:65:83:b8:27:eb:d7:b4:0f:08:00 SRC=192.168.2.240 DST=192.168.2.145 LEN=60 TOS=0x00 PREC=0x00 TTL=64 ID=58603 DF PROTO=TCP SPT=54858 DPT=1131 WINDOW=64240 RES=0x00 SYN URGP=0 
Jun 23 13:03:30 cyberjutsu1 kernel: [ 3108.070333] INCOMING connection IN=wlan0 OUT= MAC=b8:27:eb:c5:65:83:b8:27:eb:d7:b4:0f:08:00 SRC=192.168.2.240 DST=192.168.2.145 LEN=60 TOS=0x00 PREC=0x00 TTL=64 ID=17630 DF PROTO=TCP SPT=60518 DPT=6668 WINDOW=64240 RES=0x00 SYN URGP=0
```

### Uke Waza
Tori and Uke split screen with two cli.
```bash
screen
```
Press return if paragraph is prompted.
*Ctrl+a* then *Ctrl+|* #split screen in two part.
*Ctrl+a* then *Tab* to switch to next part of the screen.
*Ctrl+a* then *Ctrl+c* to create bash cli in black part of the screen.

Launch Yomi Waza Log.
```bash
tail -f /var/log/syslog
```
*Ctrl+a* then *Tab* to return to available cli.

#### shoulder surfing

##### Uke

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
##### Tori

*Tori* look at Yomi Waza Log to catch *Uke* ssh connection (from right side of the screen).

*Tori* list active sessions to identify TTY related to *Uke* ssh connection.
```bash
w
```
*Tori* list processes to identify PID related to TTY with STAT value starting with ```Ss```.
```bash
ps -fat
```

*Tori* watch what *Uke* is doing in his own session using PID as reference.
```bash
peekfd -8cnd $PID 0 1 2
```

## Yakusoku geiko
partners freely practice as tori and uke waza prepared above.

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
  * cross legs, put opposite hand on the leg, turn head on upper knee side, twist knee opposit to the head then invert
  * move to the beginning of the chair, bend your back and put your hands on your hips then stretch
* stand up
  * stretch arms to the top
  * cross arms to put hands on elbow, pull with the hand on top of the elbow to the opposit side (invert)
  * pull up shoulders
  * join hands at the back on in front of your hips then extend left side of your neck then right
## Mokusō


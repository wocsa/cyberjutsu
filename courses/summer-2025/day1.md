# Cyberjūtsu v1.3 Summer 2025 Day 1

## Background
Introduction from WOCSA on [principle](../../principle.md).
Morning Karate course with [Romuald CANIZARES](https://www.linkedin.com/in/romuald-canizares-b66661b4/) about [Kaeshi](../../glossary.md#kaeshi) concept.

## Warmup

### Eyes
* look at top right, bottom left, bottom right, top left (x5)
* draw a circle with your Eyes both sens (x5)
* draw an infinity sign with your eyes (∞) (x5)
### Hands
* Roll your fingers one by one foreward and backward both hands (x5)
* touch with thumb each of your fingers both hands foreward and backward (x2)
* join same finger of each hand with the other, then dismiss couple one by one foreward and ackward (x2)
* listen to Sensei number (1 to 5) and dismiss related fingers
### Combined 
* with partner tori move fingers, uke must follow with the eyes

### Typing
* put your fingers on each zone of the keyboard [see picture here Chapter 1, Sub Chapter 1](https://www.wikihow.com/Type#Learning-to-Type)
* type all alphabet letter one by one zone by zone from left to right (all key for one finger then move to next) backward and forward [see picture here Chapter 1, Sub Chapter 4](https://www.wikihow.com/Type#Learning-to-Type) (x10)
* with above method type as fast as possible command said by the Sensei then press enter read the first word on the prompted result (x10)
  * w, ls, cd, ps, dir, clear, echo, history, env, who, fortune , find 
  * ps -aux, ls -lai, cd .., dir /*, htop


## Uchikomi 打込 (hit in a bulk)

### Kōgeki Waza 攻撃技 (Attack Technique)

#### Network Service Discovery [T1046](https://attack.mitre.org/techniques/T1046/)
##### uke
uke provide his cyberdeck ip address to tori
```bash
ip a
```

tori identify service keywords en port numbers.


### Yomi Waza  読技 (Read technique)

#### 
#### Connection Attempt Analysis [D3-CAA](https://d3fend.mitre.org/technique/d3f:ConnectionAttemptAnalysis)
##### tori
*tori* try to find when *uke* is performing scan
```bash
tail -f /var/log/syslog
```

##### tori
*tori* try to find ip adress of *uke* in logs that are displayed on cyberdeck screen
```bash
un 23 13:03:30 cyberjutsu1 kernel: [ 3108.070285] INCOMING connection IN=wlan0 OUT= MAC=b8:27:eb:c5:65:83:b8:27:eb:d7:b4:0f:08:00 SRC=192.168.2.240 DST=192.168.2.145 LEN=60 TOS=0x00 PREC=0x00 TTL=64 ID=58603 DF PROTO=TCP SPT=54858 DPT=1131 WINDOW=64240 RES=0x00 SYN URGP=0 
Jun 23 13:03:30 cyberjutsu1 kernel: [ 3108.070333] INCOMING connection IN=wlan0 OUT= MAC=b8:27:eb:c5:65:83:b8:27:eb:d7:b4:0f:08:00 SRC=192.168.2.240 DST=192.168.2.145 LEN=60 TOS=0x00 PREC=0x00 TTL=64 ID=17630 DF PROTO=TCP SPT=60518 DPT=6668 WINDOW=64240 RES=0x00 SYN URGP=0
```

Uchikomi (repeat ten times the exercise)


*Tori* try to scan ports one by one randomly and *Uke* try to guess the number. 
After a while roles are exchanged.

###  Administrative Network Activity Analysis [D3-ANAA](https://d3fend.mitre.org/technique/d3f:AdministrativeNetworkActivityAnalysis/)
Tori and Uke split screen with two cli.
```bash
screen
```
Press return if paragraph is prompted.
*Ctrl+a* then *Ctrl+|* #split screen in two part.
*Ctrl+a* then *Tab* to switch to next part of the screen.
*Ctrl+a* then *Ctrl+c* to create bash cli in black part of the screen.
*Ctrl+a* then *Shift+S* (uppercase S) #split screen horizontally in two part.
*Ctrl+a* then *Shift+X* (uppercase X) #kill a window (a splitted part).

Launch Yomi Waza Log Monitoring.
```bash
tail -f /var/log/syslog
```
*Ctrl+a* then *Tab* switch between cli.

### Remote Terminal Session Detection [D3-RTSD](https://d3fend.mitre.org/technique/d3f:RemoteTerminalSessionDetection)

#### Uke

*Uke* connect via ssh to *Tori* cyberdeck
```bash
ssh $TORI_USERNAME@$TORI_IP_ADDRESS
```
then run commands during *Tori* practice.
For example *Uke* can run the same command to another IP_ADRESS and so use the *Uke* computer to connect to another computer doing this he can impersonate *Uke* identity.

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

*Tori* look at Yomi Waza Log Monitoring to catch *Uke* ssh connection (from right side of the screen).

*Tori* list active sessions to identify TTY related to *Uke* ssh connection.
```bash
w
```

Uchikomi (repeat ten times the exercise)

#### Lateral movement

### Bōgyo Waza 防御技 (Defense technique) 

### Process Termination [D3-PT](https://d3fend.mitre.org/technique/d3f:ProcessTermination/)

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

*Tori* look at Yomi Waza Log to catch *Uke* ssh connection (from right side of the screen).

*Tori* list active sessions to identify TTY related to *Uke* ssh connection.
```bash
w
```
*Tori* list processes to identify PID related to TTY with STAT value starting with ```Ss```.
```bash
ps -fat
```

*Tori* kill the processus by it reference identifier (PID), so the session, so disconnect *Uke* from his cyberdeck.
```bash
sudo kill -9 $PID
```

Uchikomi (repeat ten times the exercise)

## Yakusukugeiko Tsukuri

#### Discovery
Establish 3 connection on partner cyberdeck before kill his local session.
Practice to 3 victories with the same partner.
Try to understand practice of your partner then try to win after learning from him.
Swap partners with two other cyberjutsuka then provide advice to the opponent of your precedent partner.

### Sequenced fight
#### Block

1 min to prepare

3 min to fight

Repeat the block 3 times

Debrief

Change partner or keep the same

Repeat the sequence 3 times

## Randori

3 min randori without preparation and switch partner each time.

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
  * cross legs, put opposite hand on the leg, turn head on upper knee side, twist knee opposite to the head then invert
  * move to the beginning of the chair, bend your back and put your hands on your hips then stretch
* stand up
  * stretch arms to the top
  * cross arms to put hands on elbow, pull with the hand on top of the elbow to the opposite side (invert)
  * pull up shoulders
  * join hands at the back on in front of your hips then extend left side of your neck then right
## Mokusō


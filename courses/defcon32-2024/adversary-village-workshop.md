# Defcon 32 Adversary Village Cyberjutsu Workshop

Session has been scheduled for 16:00-18:00 PDT, August 10th (Saturday).
https://adversaryvillage.org/adversary-events/DEFCON-32/

## Abstract DEFCON32 Adversary Village

No matter your technical background—from 10-year-olds to technical experts like pentesters and red/blue teamers—this workshop is designed for you. The only prerequisite is basic reading, writing, and counting knowledge. Experience real live adversary sparring and see how even those with less knowledge can outmaneuver more experienced participants.

Join us for an interactive session with 14 players participating and others welcome to watch. Enhance your cybersecurity skills through collaborative and practical exercises.

### Cyberjutsu Hands-On Workshop Abstract

**Abstract Part 1: Martial Arts Components**

This workshop integrates traditional martial arts principles with cybersecurity techniques. Participants will explore:
- **Kihon (Basics):** Fundamental concepts of Cyberjutsu, including digital discipline and ethical behavior.
- **Uchikomi (Repetitive Drilling):** Structured sequences focusing on repetitive cyber attack and defense drills to build proficiency.
- **Randori (Free Practice):** Practice through controlled, live cyber engagement exercises.
- **Moral Philosophy:** Applying mutual aid and respect in digital interactions.

**Abstract Part 2: Technical Details**

 The workshop will feature:

- **MITRE ATT&CK Techniques:**
  - **Network Service Discovery (T1046):** Conducting network scans using tools like Nmap.
  - **Command and Scripting Interpreter (T1059):** Using scripting environments for automating tasks.
  - **Privilege Escalation (T1068):** Gaining higher-level permissions on target systems.
  - **Lateral Movement (T1078):** Simulating techniques for moving across networks.

- **MITRE D3FEND Techniques:**
  - **Connection Attempt Analysis (D3-CAA):** Analyzing connection attempts to detect scanning activities.
  - **Administrative Network Activity Analysis (D3-ANAA):** Monitoring network activities for administrative actions.
  - **Remote Terminal Session Detection (D3-RTSD):** Identifying remote terminal sessions.
  - **Process Termination (D3-PT):** Identifying and terminating malicious processes.

For more information, visit the [DEF CON](https://defcon.org) and [Adversary Village](https://adversaryvillage.org/) websites.

## Background
Introduction from WOCSA on [principle](../../principle.md).

## Presentation of Cyberjutsu (15min)


## Jujitsu Demo (15min)

### Why do we apply martial arts to cybersecurity ?
- Improve coordination between mind and movements​
- Train to act in stressing situations​
- Develop fast and accurate reflexes​
- Learn to improvise in unfamiliar events​
- Teach a code of conduct

### Budo concepts (Karate, Judo, Jujitsu)
Through physical and mental training in the Japanese martial ways,budō exponents seek to build their character, enhance their sense of judgement, and become disciplined individuals capable of making contributions to society at large. (source: [Nippon Budokan](https://www.nipponbudokan.or.jp/english/budochater))

Teachers of budō should always encourage others to also strive to better themselves and diligently train their minds and bodies, while continuing to further their understanding of the technical principles of budō. Teachers should not allow focus to be put on winning or losing in competition, or on technical ability alone. Above all, teachers have a responsibility to set an example as role models. (source: [Nippon Budokan](https://www.nipponbudokan.or.jp/english/budochater))

### Key elements of Budo
- Moral code
- Reigi
- Tori / Uke

## Greetings
People stand up in front of each others in line and bend over when sensei say Rei 

## Warmup (5min)

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
* practitioners enter login: cyberjutsuka then press enter and enter password hajime then press enter.
* type all alphabet letter one by one zone by zone from left to right (all key for one finger then move to next) backward and forward [see picture here Chapter 1, Sub Chapter 4](https://www.wikihow.com/Type#Learning-to-Type) (x10)
* with above method type as fast as possible command said by the Sensei then press enter read the first word on the prompted result (x10)
  * w, ls, cd, ps, dir, clear, echo, history, env, who, fortune , find 
  * ps -aux, ls -lai, cd .., dir /*, htop

## Uchikomi 打込 [hit in a bulk] (20min)

### Kōgeki Waza 攻撃技 (Attack Technique)

#### Network Service Discovery [T1046](https://attack.mitre.org/techniques/T1046/)
##### uke
uke provide his cyberdeck ip address to tori
```bash
ip r s
```
##### tori
*tori* try to find open ports on cyberdeck of *uke*.
```bash
nmap $UKE_IP_ADRESS 
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

##### uke
*uke* try to find open ports on cyberdeck of *tori*.
```bash
nmap $TORI_IP_ADDRESS 
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
watch -n2 'ss -tnp'
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

## Yakusukugeiko Tsukuri (10 min)

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

## Randori (10min)

3 min randori without preparation and switch partner each time.

## Battle Royal (5min)

## Cooldown (5min)

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
### Mokusō

### Greetings


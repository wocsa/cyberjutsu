# Process Termination
[D3-PT](https://d3fend.mitre.org/technique/d3f:ProcessTermination/)

## Log Monitoring

*Tori* looks at Yomi Waza Log to catch *Uke's* ssh connection (from the right
side of the screen).

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

### Launch Yomi Waza Log Monitoring.

* *Ctrl+a* then *Tab* to return to available cli.
* Remote Terminal Session Detection [D3-RTSD]
* *Tori* lists processes to identify the PID related to the TTY with STAT value
starting with `Ss`.
   * *Uke* scan port to *Tori* cyberdeck to identify ssh port
   * *Uke* connect via ssh to *Tori* cyberdeck

## *Tori* look at Yomi Waza Log Monitoring to catch *Uke* ssh connection (from right
side of the screen).

### *Tori* kills the process by its reference identifier (PID), so the session, and
disconnects *Uke* from his cyberdeck.

#### Uke performs connection

Tori performs a connection at the same time as Uke

```bash
ip -color=auto addr # or ip a
```

#### Tori performs [Process Termination](day1.md#process-termination-d3-pt) on the
local session of *Uke*

Courage (Yuki) 勇気

```bash
nmap $UKE_IP_ADRESS
```

Sincerity (Makato) 誠

### Mutual Aid (Gojo)

## Yomi Waza

### Etiquette (Reigi) 礼儀

#### Tori performs [Process Termination](day1.md#process-termination-d3-pt) on the
local session of *Uke*

Honor (Meiyo) 名誉

```bash
tail -f /var/log/syslog
```

#### Uke performs connection

Humility (Kenkyo) 謙虚

```bash
nmap $TORI_IP_ADDRESS
```

#### Tori performs [Process Termination](day1.md#process-termination-d3-pt) on the
local session of *Uke*

Self-control (Shisei) 自制

```bash
un 23 13:03:30 cyberjutsu1 kernel: [ 3108.070285] INCOMING connection IN=wlan0 OUT= MAC=b8:27:eb:c5:65:83:b8:27:eb:d7:b4:0f:08:00 SRC=192.168.2.240 DST=192.168.2.145 LEN=60 TOS=0x00 PREC=0x00 TTL=64 ID=58603 DF PROTO=TCP SPT=54858 DPT=1131 WINDOW=64240 RES=0x00 SYN URGP=0 
Jun 23 13:03:30 cyberjutsu1 kernel: [ 3108.070333] INCOMING connection IN=wlan0 OUT= MAC=b8:27:eb:c5:65:83:b8:27:eb:d7:b4:0f:08:00 SRC=192.168.2.240 DST=192.168.2.145 LEN=60 TOS=0x00 PREC=0x00 TTL=64 ID=17630 DF PROTO=TCP SPT=60518 DPT=6668 WINDOW=64240 RES=0x00 SYN URGP=0
```

### Mutual Aid (Gojo)

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

### Remote Terminal Session Detection D3-RTSD

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

### Mutual Aid (Gojo) 互助

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

Perseverance (Nintai) 忍耐

```bash
peekfd -8cnd $PID 0 1 2
```

### Mutual Aid (Gojo)

### Yakusoku geiko

Integrity (Sessō) 節操

### Process Termination D3-PT

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

1. Cyber Moral Code (Saibā-dō)
1. Moral Code describe how practitioner (Saibā-jūtsu-ka) behave and shape his
inner state for practicing Cyberjūtsu (Saibā-jūtsu).

### Mutual Aid (Gojo)

### Courage (Yuki)

Sincerity (Makato)

### Yakusoku geiko

Kindness (Kojo) 厚情

## Integrity (Sessō)

Cyberjutsu short discovery course for http://thcon.party 2024

## Cyberjūtsu short discovery course for http://thcon.party 2024

### Eyes

* Greeting
* The cyberjutsuka before practicing with someone greet him with physical bow
called Ritsu Rei or "Onegaishimasu" sentence

### Hands

* Warmup
* Eyes

### look at top right, bottom left, bottom right, top left (x5)

* draw a circle with your Eyes both sens (x5)
   * draw an infinity sign with your eyes (∞) (x5)
   * Hands
   * Roll your fingers one by one foreward and backward both hands (x5)
* touch with thumb each of your fingers both hands foreward and backward (x2)
   * join same finger of each hand with the other, then dismiss couple one by one
foreward and ackward (x2)
   * listen to Sensei number (1 to 5) and dismiss related fingers
   * Combined
   * with partner tori move fingers, uke must follow with the eyes

## Yomi Waza

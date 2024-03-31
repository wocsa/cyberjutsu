# French Translation of 'Cyberjūtsu short discovery course for http://thcon.party
2024'

## French Translation of 'Greeting'

* The cyberjutsuka before practicing with someone greet him with physical bow
called Ritsu [Rei](./glossary.md#rei) or "Onegaishimasu" sentence

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

## French Translation of 'Yomi Waza'

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

French Translation of '*Uke* scan port to *Tori* cyberdeck to identify ssh port'

```bash
nmap -A $UKE_IP_ADRESS
```

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

### French Translation of 'Nagekomi (x10 by exercise by partner)'

French Translation of 'kill local session of the uke'

#### French Translation of 'Fake service listening'

##### French Translation of 'Tori'

French Translation of '*Tori* open a port to fake a service available for *Uke*'

```bash
sudo nc -k -l -p $PORT
```

##### French Translation of 'Uke'

French Translation of '*Uke* scan port to *Tori* cyberdeck to identify ssh port'

```bash
nmap -A $UKE_IP_ADRESS
```

*Uke* perform a connection with a fake client to the fake service of *Tori*

```bash
nc $TORI_IP_ADDRESS $TORI_PORT
```

French Translation of '*Uke* disconnect with CTRL+c'

```bash
nc $TORI_IP_ADDRESS $TORI_PORT
```

### French Translation of 'Uchikomi (x10 by exercise by partner)'

French Translation of '*Uke* open a port, *Tori* must find the port and connect
on it.'

## French Translation of 'Randori'

French Translation of 'Try to disconnect partner from all his sessions (local and
remote).'

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

## French Translation of 'Greeting'

* The cyberjutsuka after practicing with someone gree him with physical bow
called Ritsu [Rei](./glossary.md#rei) or "Domo arigato" sentence

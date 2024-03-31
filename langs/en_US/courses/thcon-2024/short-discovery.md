# Cyberjutsu short discovery course for 2024

## Greeting

* The cyberjutsuka before practicing with someone greet him with physical bow
called Ritsu Rei or "Onegaishimasu" sentence

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

## Yomi Waza

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

*Uke* scan port to *Tori* cyberdeck to identify ssh port

```bash
nmap -A $UKE_IP_ADRESS
```

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

### Courage (Yuki)

Sincerity (Makato)

#### Etiquette (Reigi)

##### Tori

Honor (Meiyo)

```bash
sudo nc -k -l -p $PORT
```

##### Uke

*Uke* scan port to *Tori* cyberdeck to identify ssh port

```bash
nmap -A $UKE_IP_ADRESS
```

Humility (Kenkyo)

```bash
nc $TORI_IP_ADDRESS $TORI_PORT
```

Self-control (Shisei)

```bash
nc $TORI_IP_ADDRESS $TORI_PORT
```

### Mutual Aid (Gojo)

Perseverance (Nintai)

## Integrity (Sessō)

Kindness (Kojo)

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

## Greeting

* Yakusoku geiko

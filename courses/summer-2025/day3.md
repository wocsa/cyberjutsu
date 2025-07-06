# Cyberjūtsu v1.3 Summer 2025 Day 3
## Background
Morning Jujitsu course with [Jean-Louis MOURLAN](https://fr.linkedin.com/in/jean-louis-mourlan-30454986) about [Kaeshi](../../glossary.md#kaeshi) concept.
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

## Waza
### Bogyo Waza
#### Port changing
##### tori
1) change ssh port
   ```bash
   echo "Port 2222" | sudo tee -a /etc/ssh/sshd_config && sudo systemctl restart ssh
   ```
   1. change telnet port
   ```bash
   echo -e "telnet\t4444/tcp" | sudo tee -a /etc/services && sudo systemctl restart xinetd
   ```
2) change uke exposed port after tori connection then kill the session
3) connect to uke port one by one then all at the same time to inject an attack in the Middle
4) connect to uke system then mirror a port before been ejected

##### uke
*uke* try to find open ports on cyberdeck of *tori*.
```bash
nmap $TORI_IP_ADDRESS 
```
#### Useless port opening
##### tori
Tori open a port with a processus that provide no prompt to uke
```bash
nc -lvnp 4444
```

##### uke
uke try to connect to the port with ssh the telnet
```bash
ssh 192.168.1.xxx:4444
```

```bash
telnet 192.168.1.xxx 4444
```

#### Fake connection
##### tori
Tori will use a command without any prompt to an port ssh then telnet
```bash
nc 192.168.1.xxx 22
```

```bash
nc 192.168.1.xxx 22
```

## Yakusukukeiko
1. uke change ports
2. tori find the ports then connect
3. uke kill connections

## Randori

## Batoru Rowaiaru バトル・ロワイアル

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
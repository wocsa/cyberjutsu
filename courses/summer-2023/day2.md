# Cyberjūtsu v1.0 Summer 2023 Day 2
## Background
Morning Judo course with [Dr Yves Cadot](http://budo2008.nifs-k.ac.jp/en/guest/cadot.html) about [Go no sen](../../glossary.md#go-no-sen) concept.
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

## Yomi Waza
### Log Monitoring
Everyone split screen with two command line interface.
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

## Sen
### Kōgeki Waza

#### Credential Stuffing (T1110.004)[https://attack.mitre.org/techniques/T1110/004/]
##### Tori
Tori perform (network service discovery)[./day1.md#network-service-discovery-t1046] on service discovered listed below.
Then connect to each services with known credentials.
##### ssh connection
```ssh -p $UKE_PORT $UKE_LOGIN@$UKE_IP_ADDRESS```
##### ftp connection
```ftp $UKE_IP_ADDRESS $UKE_PORT```
then enter login then password
##### http connection
```curl -XGET http://$UKE_LOGIN:$UKE_PASSWORD@$UKE_IP_ADRESS:$UKE_PORT | lynx -stdin```

##### Uke
Uke use Yomi Waza Log Monitoring to identify Tori connections.

##### Uchikomi (x10 by exercise by partner)

### Uke Waza

#### Process Termination [D3-PT](https://d3fend.mitre.org/technique/d3f:ProcessTermination/)

##### Uke

*Uke* connect via ssh or ftp or http

then run commands during *Tori* practice.

##### Tori

*Tori* look at Yomi Waza Log to catch *Uke* connection (from right side of the screen).

*Tori* list active sessions to identify process to *Uke* connection and try to kill related process.

###### ssh
For ssh see (Day 1 - Process Termination)[https://github.com/wocsa/cyberjutsu/blob/main/courses/summer-2023/day1.md#process-termination-d3-pt]
###### ftp
```bash
pure-ftpwho
kill -9 $PID
```


###### ssh

## Go No Sen

### Uke
Uke performs connection (ssh or ftp)
### Tori
1. Tori counter with (Process Termination)[day1.md#process-termination-d3-pt]
2. Tori performs connection (ssh or ftp)
3. Tori performs (Process Termination)[day1.md#process-termination-d3-pt] on local session of *Uke*

### Uchikomi (x10 by exercise by partner)

## Sen No Sen

### Uke
Uke performs connection
### Tori
1. Tori performs connection at the same time as Uke
2. Tori performs (Process Termination)[day1.md#process-termination-d3-pt] on local session of *Uke*

### Uchikomi (x10 by exercise by partner)

## Randori
first that success to reboot cyberdeck of the other with the command
```bash
reboot
```

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


## References

[FR: Sen no sen - tai no sen - go no sen - KARATE](https://www.youtube.com/watch?v=w1ov5XkDqBg)
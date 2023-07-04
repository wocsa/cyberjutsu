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
##### telnet connection
```telnet $UKE_IP_ADDRESS $UKE_PORT```
then enter login then password
##### Uke
Uke use Yomi Waza Log Monitoring to identify Tori connections.

##### pattern filtering
```bash
tail -f /var/log/syslog | grep -i $CATCH_STRING
```

##### Uchikomi (x10 by exercise by partner)
Tori perform one connection, Uke identify connection by Yomi Waza, Uke set pattern filtering, Tori run the same connection, Uke must see only messages (log) related to the connection.
First IP, then port, then service name

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
###### telnet
it is not possible to find telnet session related process with *w* command or *pure-ftpwho* command netstat can help to identify connection
```bash
netstat -tupc
```

#### Connections Attempt Analysis (D3-CAA)[https://d3fend.mitre.org/technique/d3f:ConnectionAttemptAnalysis/]

##### Uke
Uke connect to one of 3 ports (ssh or telnet or ftp)

##### Tori
Tori try to identify connection of Uke and related port on *Uke* cyberdeck.

```bash
netstat -tupc
```
### Uke Waza

#### Connection Termination
```bash
tcpkill -9 port $UKE_PORT
```

### Uchikomi (x10 by exercise by partner)
Uke connect to a random service then tori perform connection termination.

#### Fake service listening
##### Tori
```bash 
sudo nc -k -l -p $PORT
```

##### Uke
```bash
nc $TORI_IP_ADDRESS $TORI_PORT
```

### Uchikomi (x10 by exercise by partner)
Uke choose a random port, tori find it and connect to it then send "hello".
Tori must use (Network Service Discovery)[./day1.md#network-service-discovery-t1046]

## Yomi Waza
#### Read file content
```bash
cat $FILE_PATH
```
#### Write file content
```bash
echo "$CONTENT" > $FILE_PATH
```
#### Change default port

##### telnet
```bash
cat /etc/services |grep -i telnet|sed 's/\(telnet\t\t\)23\/tcp/\12323/g'
sed 's/\(telnet\t\t\)23\/tcp/\12323/g' /etc/services
sudo systemctl restart inetd
```

##### ssh
```bash
cat /etc/ssh/ssh_config
cat /etc/ssh/ssh_config| grep -i port
cat /etc/ssh/ssh_config| grep -i port| sed 's/#   Port 22//g'
cat /etc/ssh/ssh_config|grep -i port|sed 's/#\(   Port \)22/\12222/g'
sed 's/#\(   Port \)22/\12222/g' /etc/ssh/ssh_config |grep -i port
sed -i 's/#\(   Port \)22/\12222/g' /etc/ssh/ssh_config
sudo systemctl restart ssh
```


##### Uchikomi (x10 by exercise by partner)

##### bash history
Ctrl+r search keyword 
Ctrl+o past the command
!! previous command
!N the N command from the beginning
!-N N command before last one

##### Uchikomi (x10 by exercise by partner)
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
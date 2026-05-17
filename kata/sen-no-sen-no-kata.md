# Sen no Sen no Kata

## Why this is a relevant kata

This kata formalizes attack inside the opponent's attack. It is relevant because Cyberjutsu repeatedly trains live detection, early recognition, and immediate technical response. In this kata, `tori` does not wait for the hostile action to fully settle before acting and does not remain in passive defense. Instead, `tori` enters at the birth of uke's action and launches a counter-attack through the same opening.

### Criteria from [kata-common-principles](../references/kata-common-principles.md)

- `Clear pedagogical purpose`: teach initiative at the moment of contact rather than after full compromise.
- `Fixed structure with repeatable standard`: connect, detect, counter-enter, disrupt, finish.
- `Technical coherence`: built from existing Cyberjutsu `Yomi Waza`, `Kogeki Waza`, and `Bogyo Waza`.
- `Embodied principles`: expresses `sen no sen`, `mikiri`, `tsukuri`, and `kake`.
- `Link to application`: models immediate counter-attack before the opponent establishes useful control.
- `Progressive difficulty`: moves from same-host session reversal to return attack against a real exposed service on uke.
- `Precision of intent`: the counter-attack must begin inside uke's opening movement, not after a reset.
- `Rhythm and maai`: perceive contact, enter at once, take initiative, finish.
- `Control and safety`: all actions remain inside approved lab services and supervised practice systems.
- `Ethical and cultural frame`: the kata trains timing and initiative, not uncontrolled retaliation.

## Source material

- [techniques.md](../techniques.md)
- [courses/summer-2023/day1.md](../courses/summer-2023/day1.md)
- [courses/summer-2023/day2.md](../courses/summer-2023/day2.md)
- [courses/thcon-2024/short-discovery.md](../courses/thcon-2024/short-discovery.md)
- [techniques_candidates.csv](../techniques_candidates.csv)

## Type

Paired kata.

## Roles

- `Uke`: initiates the connection
- `Tori`: detects, identifies, and intercepts

## Objective

Tori catches uke's attack as it begins and immediately counter-attacks through a reachable technical line before uke can establish stable control.

## Variant 1: Counter-Entry To Uke's Listening Service

This version is the case where uke attacks tori while also exposing a real listening service. Tori detects the first connection and immediately attacks back through uke's exposed service.

#### Uke

*Uke* opens a real listening service on TCP port `5555`.
```bash
nc -lvnp 5555
```

*Uke* attacks tori by connecting to tori's service.
```bash
nc $TORI_IP 4444
```

#### Tori

*Tori* opens a listening service on TCP port `4444`.
```bash
nc -lvnp 4444
```

*Tori* detects the first connection and confirms that uke is also listening on TCP port `5555`.
```bash
ss -tnp | grep 4444
nmap -p 5555 $UKE_IP
```

*Tori* immediately counter-connects to uke's real listening port.
```bash
nc $UKE_IP 5555
echo "counter-entry established"
```

#### Result

*Uke* sees tori's return connection and text arrive while uke's own first attack is still active.

## Variant 2: SSH Counter-Entry Before Stabilization

This version applies `sen no sen` with SSH. Because the SSH session is encrypted, the kata does not rely on visible cleartext injection. Instead, tori detects uke's connection the moment it begins, immediately counter-connects to uke, and tries to remove uke from uke's own local session before uke can stabilize or act decisively on tori.

#### Uke

*Uke* initiates an SSH session to tori.
```bash
ssh $TORI_USERNAME@$TORI_IP_ADDRESS
```

#### Tori

*Tori* starts live monitoring and waits for the remote connection event.
```bash
tail -f /var/log/syslog
```

As soon as the event is detected, *tori* counter-connects to uke.
```bash
ssh $UKE_USERNAME@$UKE_IP_ADDRESS
```

On uke's host, *tori* identifies uke's local TTY and its process.
```bash
w
ps -fat
```

*Tori* kills uke's local session before uke can stabilize or complete useful action on tori.
```bash
kill -9 $PID
```

#### Result

*Uke* is ejected from uke's own local session while the original attack is still in progress.

## Variant 3: FTP Control Cut With Immediate Counter-Entry

This version uses the FTP control connection only as the attacking line that opens the exchange. Tori does not try to deceive uke with banners. Instead, tori detects the control session at birth and immediately attacks back through a reachable service on uke before uke completes useful FTP action.

#### Uke

*Uke* opens a real listening service on TCP port `5555`.
```bash
nc -lvnp 5555
```

*Uke* initiates the FTP control connection to tori.
```bash
ftp $TORI_IP 2121
```

#### Tori

*Tori* opens a simple FTP-style cleartext control service on TCP port `2121`.
```bash
nc -lvnp 2121
```

*Tori* detects the new control connection immediately.
```bash
ss -tnp | grep 2121
```

*Tori* immediately counter-connects to uke's listening service while uke is still entering the FTP dialogue.
```bash
nc $UKE_IP 5555
echo "return attack active"
```

#### Result

*Uke* receives the return attack while uke's own FTP control attempt is still active.

## Important distinction

- `Sen no sen` here means counter-attacking inside the opening created by uke's own attack.
- A pure `sen no sen` sequence does not rely on deception as its main effect.
- Message shaping, fake prompts, and misleading banners belong more naturally to `kyojitsu`.
- In the SSH variant, `sen no sen` is expressed through immediate detection and counter-entry, not through cleartext injection.

## Success criteria

- Tori detects the attack at the beginning of the exchange.
- Tori launches the counter-attack before uke establishes useful control.
- Tori uses the same temporal opening created by uke's action.
- Both practitioners can explain why the action is `sen no sen` rather than `go no sen`, `kaeshi`, or `kyojitsu`.

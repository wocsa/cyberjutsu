# Kuzushi no Kata

## Why this is a relevant kata

This kata formalizes disruption by reshaping the opponent's expectations instead of meeting force directly. It is relevant because the project repeatedly teaches port changes, port redirection, useless port exposure, and connection cutting as ways to break the structure of an attack. In martial terms, this is `kuzushi`: destroying the opponent's posture before they can complete the technique they intended to apply.

### Criteria from [kata-common-principles](../references/kata-common-principles.md)

- `Clear pedagogical purpose`: teach how to destabilize an attacker by changing or redirecting the exposed attack surface.
- `Fixed structure with repeatable standard`: expose, discover, alter, re-discover, and interrupt.
- `Technical coherence`: built directly from service discovery, port change, port redirect, and connection termination drills already present in the repository.
- `Embodied principles`: expresses `kuzushi`, timing, disruption, and control of initiative.
- `Link to application`: models real defensive disruption of known entry points.
- `Progressive difficulty`: can move from one changed port to several shuffled or mirrored service entries.
- `Precision of intent`: every change must have a purpose: confuse, delay, divert, or break the attack chain.
- `Rhythm and maai`: reveal, approach, break balance, reorient, finish.
- `Control and safety`: the kata stays inside authorized lab systems and reversible service changes.
- `Ethical and cultural frame`: uke and tori train controlled destabilization, not blind denial of service.

## Source material

- [techniques.md](../techniques.md)
- [courses/summer-2023/day2.md](../courses/summer-2023/day2.md)
- [courses/summer-2024/day2.md](../courses/summer-2024/day2.md)
- [courses/summer-2026/day2.md](../courses/summer-2026/day2.md)
- [courses/summer-2026/day3.md](../courses/summer-2026/day3.md)

## Type

Paired kata.

## Roles

- `Tori`: defender who reshapes the target surface
- `Uke`: attacker seeking stable entry

## Objective

Tori breaks uke's connection plan by changing or redirecting the exposed service structure and forcing uke to lose technical certainty.

## Sequence

Both practitioners perform `rei`.

#### Tori

*Tori* exposes a known reachable service.

#### Uke

*Uke* discovers the service.
```bash
nmap $TORI_IP_ADDRESS
```

*Uke* attempts a normal connection.
```bash
ssh -p $TORI_PORT $TORI_LOGIN@$TORI_IP_ADDRESS
```

#### Tori

*Tori* performs `kuzushi` by changing or redirecting the surface.
```bash
sudo iptables -t nat -A PREROUTING -p tcp --dport 2222 -j REDIRECT --to-port 22
```

If the training setup uses direct service editing instead, *tori* changes the service port and restarts the service.
```bash
sudo sed -i 's/Port .*/Port 222/' /etc/ssh/sshd_config && sudo systemctl restart ssh
```

#### Uke

*Uke* re-runs discovery and states what changed.

#### Tori

If *uke* is already connected, *tori* interrupts the old communication.
```bash
sudo tcpkill -9 port $UKE_PORT
```

#### Result

Both practitioners can describe the moment where uke's expected line was broken and the surface had to be re-read.

## Success criteria

- Tori changes the attack surface in a controlled and intelligible way.
- Uke recognizes the break in assumptions quickly.
- Uke distinguishes between "host is unavailable" and "service posture has changed."
- Both practitioners can explain the exact moment where attack posture was broken.

## Progressive variants

- Beginner: one service changes to one new port.
- Intermediate: one port is redirected while another decoy port is exposed.
- Advanced: tori combines service mutation with useless port opening or timed connection interruption.

## Sequence Variant: Visible SSH Pressure, Hidden Telnet Finish

This variant applies `kuzushi` through attention overload. Tori creates three visible SSH connections that uke can detect and focus on, while a less-visible telnet connection is used as the decisive line. The purpose is to break uke's reading posture and force uke to commit attention to the wrong threat.

#### Uke

*Uke* uses a `yomi waza` that exposes active SSH-style remote sessions but does not reliably reveal the telnet line.
```bash
w
```

*Uke* lists processes to identify the PIDs related to the visible SSH sessions.
```bash
ps -fat
```

*Uke* starts killing the visible SSH sessions and stays focused on the SSH threat.
```bash
kill -9 $SSH_PID
```

#### Tori

*Tori* establishes three SSH connections to uke in order to create a visible and repeated pressure line.
```bash
ssh $UKE_USERNAME@$UKE_IP_ADDRESS
ssh $UKE_USERNAME@$UKE_IP_ADDRESS
ssh $UKE_USERNAME@$UKE_IP_ADDRESS
```

While uke is focused on the SSH sessions, *Tori* opens a telnet connection that is less visible in uke's current `yomi waza` focus.
```bash
telnet $UKE_IP_ADDRESS $UKE_TELNET_PORT
```

From the telnet session on uke, *Tori* identifies uke's local TTY, usually the one without a remote IP address.
```bash
w
```

*Tori* lists processes to identify the PID attached to uke's local session by matching the local TTY and `Ss` state.
```bash
ps -fat
```

*Tori* kills uke's local session from the telnet line while uke is still focused on the SSH pressure.
```bash
kill -9 $LOCAL_UKE_PID
```

#### Result

*Uke* is ejected from uke's own local session before completing the SSH cleanup.

This variant fits `kuzushi` because the decisive effect is not created by brute force alone, but by breaking uke's structure of attention and defensive orientation.

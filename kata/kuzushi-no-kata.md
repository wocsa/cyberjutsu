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

1. Both practitioners perform `rei`.
2. Tori exposes a known reachable service.
3. Uke discovers the service.
```bash
nmap $TORI_IP_ADDRESS
```
4. Uke attempts a normal connection.
```bash
ssh -p $TORI_PORT $TORI_LOGIN@$TORI_IP_ADDRESS
```
5. Tori performs `kuzushi` by changing or redirecting the surface.
```bash
sudo iptables -t nat -A PREROUTING -p tcp --dport 2222 -j REDIRECT --to-port 22
```
6. If the training setup uses direct service editing instead, tori changes the service port and restarts the service.
```bash
sudo sed -i 's/Port .*/Port 222/' /etc/ssh/sshd_config && sudo systemctl restart ssh
```
7. Uke re-runs discovery and states what changed.
8. If uke is already connected, tori interrupts the old communication.
```bash
sudo tcpkill -9 port $UKE_PORT
```
9. Roles switch.

## Success criteria

- Tori changes the attack surface in a controlled and intelligible way.
- Uke recognizes the break in assumptions quickly.
- Uke distinguishes between "host is unavailable" and "service posture has changed."
- Both practitioners can explain the exact moment where attack posture was broken.

## Progressive variants

- Beginner: one service changes to one new port.
- Intermediate: one port is redirected while another decoy port is exposed.
- Advanced: tori combines service mutation with useless port opening or timed connection interruption.

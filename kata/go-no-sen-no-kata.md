# Go no Sen no Kata

## Why this is a relevant kata

This kata formalizes counter-initiative in Cyberjutsu: detect the intrusion, locate the active foothold, and break it cleanly. It is relevant because several courses already teach the sequence from connection detection to process termination. This makes it one of the clearest forms in the repository where defense is not passive blocking but timed reversal.

### Criteria from [kata-common-principles](../references/kata-common-principles.md)

- `Clear pedagogical purpose`: teach counteraction after hostile entry has begun.
- `Fixed structure with repeatable standard`: detect, identify session, identify PID, terminate session.
- `Technical coherence`: combines existing `Yomi Waza` and `Uke Waza` without adding foreign mechanics.
- `Embodied principles`: expresses `go no sen`, `kuzushi`, and decisive finishing.
- `Link to application`: directly corresponds to identifying and terminating unauthorized remote sessions.
- `Progressive difficulty`: can progress from ssh only to mixed services and parallel sessions.
- `Precision of intent`: every step narrows from event to TTY to PID to action.
- `Rhythm and maai`: receive, confirm, close distance, finish.
- `Control and safety`: the kata is performed on approved lab sessions with explicit partner consent.
- `Ethical and cultural frame`: emphasizes controlled defensive action rather than indiscriminate destruction.

## Source material

- [techniques.md](../techniques.md)
- [courses/summer-2023/day1.md](../courses/summer-2023/day1.md)
- [courses/summer-2026/day1.md](../courses/summer-2026/day1.md)
- [courses/thcon-2024/short-discovery.md](../courses/thcon-2024/short-discovery.md)

## Type

Paired kata.

## Roles

- `Uke`: remote intruder
- `Tori`: defender

## Objective

Tori detects uke's remote shell or ssh session and terminates it with the minimum number of steps.

## Sequence

1. Both practitioners perform `rei`.
2. Tori starts live monitoring.
```bash
tail -f /var/log/syslog
```
3. Uke opens a remote session to tori.
```bash
ssh $TORI_USERNAME@$TORI_IP_ADDRESS
```
4. Tori confirms that a remote connection has begun.
5. Tori identifies the active TTY.
```bash
w
```
6. Tori identifies the controlling process related to that TTY.
```bash
ps -fat
```
7. Tori terminates the session process.
```bash
kill -9 $PID
```
8. Uke confirms the disconnection.
9. Roles switch.

## Success criteria

- Tori detects the session quickly.
- Tori maps the correct TTY to the correct PID.
- Tori terminates only the intended session.
- Tori can explain why the chosen PID was the correct one.

## Progressive variants

- Beginner: one ssh session.
- Intermediate: uke runs commands before termination and tori must maintain tracking.
- Advanced: multiple remote sessions are active and tori must remove only the hostile one.

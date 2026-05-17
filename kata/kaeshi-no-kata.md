# Kaeshi no Kata

## Why this is a relevant kata

This kata formalizes the moment where defense becomes counterattack. It is relevant because the project does not stop at detection and interruption: several drills explicitly move from observing or breaking a remote session to taking back initiative, opening a counter-connection, or killing the opponent's local session. This makes `kaeshi` one of the clearest Cyberjutsu principles for turning an attacker's movement against them.

### Criteria from [kata-common-principles](../references/kata-common-principles.md)

- `Clear pedagogical purpose`: teach how to reverse the situation immediately after identifying an opponent's action.
- `Fixed structure with repeatable standard`: detect, identify, interrupt, enter, finish.
- `Technical coherence`: combines existing monitoring, session identification, process termination, and lateral movement drills already taught in the repository.
- `Embodied principles`: expresses `kaeshi`, initiative reversal, timing, and exploitation of a momentary opening.
- `Link to application`: models active defensive counter-control after remote intrusion.
- `Progressive difficulty`: can grow from single-session reversal to chained or pivoted movement.
- `Precision of intent`: the counteraction must be tied to a specific opening created by the opponent's attack.
- `Rhythm and maai`: receive, evade or cut, reverse, complete.
- `Control and safety`: all actions remain in agreed practice systems with explicit role consent.
- `Ethical and cultural frame`: the counter is disciplined and proportionate, not uncontrolled retaliation.

## Source material

- [courses/summer-2023/day1.md](../courses/summer-2023/day1.md)
- [courses/summer-2025/day2.md](../courses/summer-2025/day2.md)
- [courses/summer-2026/day3.md](../courses/summer-2026/day3.md)
- [courses/defcon34-2026/adversary-village-workshop.md](../courses/defcon34-2026/adversary-village-workshop.md)
- [glossary.md](../glossary.md)

## Type

Paired kata.

## Roles

- `Uke`: initial attacker
- `Tori`: defender who reverses initiative

## Objective

Tori identifies uke's active session, cuts it, then immediately applies counter-control through a new authorized connection or a decisive local session kill on uke's side.

## Sequence

Both practitioners perform `rei`.

#### Uke

*Uke* opens a remote session toward tori.
```bash
ssh $TORI_USERNAME@$TORI_IP_ADDRESS
```

#### Tori

*Tori* monitors and confirms the hostile session.
```bash
w
ps -fat
```

*Tori* interrupts the active attack.
```bash
kill -9 $PID
```

Without losing rhythm, *tori* launches the counteraction through a known reachable service on uke.
```bash
ssh -p $UKE_PORT $UKE_LOGIN@$UKE_IP_ADDRESS
```

If the drill is performed in the local-session version, *tori* instead removes uke's local foothold on uke's own host after gaining access.
```bash
kill -9 $PID
```

#### Result

*Uke* confirms whether *tori* successfully reversed initiative.

## Success criteria

- Tori identifies the original attack correctly.
- Tori breaks the original session without hesitation.
- Tori's counteraction begins immediately after the break, not after a long reset.
- Both practitioners can describe the opening that made the reversal possible.

## Progressive variants

- Beginner: terminate the incoming session, then reconnect to uke directly.
- Intermediate: terminate the session, then kill uke's local session from uke's host.
- Advanced: use the first compromised host as a pivot for a second connection and force uke to track the reversal through logs.

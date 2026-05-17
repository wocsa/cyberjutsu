# Tsukuri no Kata

## Why this is a relevant kata

This kata formalizes preparation and sequencing instead of isolated commands. It is relevant because the 2026 material shifts from single drills to asymmetric rounds where one practitioner builds a path to advantage and the other must adapt. This is closer to how Cyberjutsu becomes a system rather than a list of commands.

### Criteria from [kata-common-principles](../references/kata-common-principles.md)

- `Clear pedagogical purpose`: teach construction of advantage through ordered phases instead of disconnected actions.
- `Fixed structure with repeatable standard`: discovery, entry, persistence attempt, defensive interruption.
- `Technical coherence`: the kata uses only training material already present in the repository.
- `Embodied principles`: expresses `tsukuri`, initiative, adaptation, and transition between techniques.
- `Link to application`: models a realistic chain of reconnaissance, access, and defensive disruption.
- `Progressive difficulty`: supports increasingly asymmetric rounds and more hidden service layouts.
- `Precision of intent`: each phase has a defined outcome before the next begins.
- `Rhythm and maai`: preparation, engagement, interruption, reset.
- `Control and safety`: each round is bounded by time and practice scope.
- `Ethical and cultural frame`: both partners pause on `mate` to analyze and improve rather than brute force.

## Source material

- [courses/summer-2023/day1.md](../courses/summer-2023/day1.md)
- [courses/summer-2023/day2.md](../courses/summer-2023/day2.md)
- [courses/summer-2026/day1.md](../courses/summer-2026/day1.md)
- [glossary.md](../glossary.md)

## Type

Paired kata.

## Roles

- `Tori`: builder of the attack sequence
- `Uke`: adaptive defender

## Objective

Tori constructs a short offensive chain while uke detects the chain and breaks it before full control is achieved.

## Sequence

Both practitioners perform `rei` and define a round limit.

#### Uke

*Uke* reveals a reachable host.
```bash
ip a
```

#### Tori

*Tori* performs discovery.
```bash
nmap $UKE_IP_ADDRESS
```

*Tori* chooses one discovered service and attempts connection.
```bash
ssh -p $UKE_PORT $UKE_LOGIN@$UKE_IP_ADDRESS
```

#### Uke

*Uke* monitors the log stream while the entry attempt happens.
```bash
tail -f /var/log/syslog
```

On `mate`, both practitioners stop and state:
- what tori is trying to build
- what uke has recognized
- what the next likely move is

Resume.

If *tori* establishes access, *uke* identifies the session.
```bash
w
ps -fat
```

*Uke* breaks the chain by terminating the session.
```bash
kill -9 $PID
```

#### Result

Debrief and switch roles.

## Success criteria

- Tori shows a coherent sequence rather than random commands.
- Uke identifies the phase of the sequence before the end state.
- The `mate` pause improves the next repetition.
- Both practitioners can name the point where initiative changed.

## Progressive variants

- Beginner: one service and one connection attempt.
- Intermediate: tori must establish three successful connections before losing initiative.
- Advanced: uke must predict the next move before it occurs and adapt the defense accordingly.

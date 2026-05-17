# Mikiri no Kata

## Why this is a relevant kata

This kata formalizes the foundational Cyberjutsu exchange already repeated in the courses: one practitioner exposes a target surface, the other discovers it, and both learn to read the meaning of network openings. It is relevant because it turns raw port scanning into a disciplined study of observation, distance, initiative, and interpretation.

### Criteria from [kata-common-principles](../references/kata-common-principles.md)

- `Clear pedagogical purpose`: teach the basics of service discovery, target reading, and identification of exposed network surfaces.
- `Fixed structure with repeatable standard`: the roles, command order, and expected observations are stable and can be repeated exactly.
- `Technical coherence`: every action comes from existing Cyberjutsu `Kogeki Waza` and `Yomi Waza`.
- `Embodied principles`: trains `mikiri`, initiative, timing, and efficient information gathering.
- `Link to application`: directly maps to real reconnaissance and defensive awareness.
- `Progressive difficulty`: starts with one host and known IP, then can add hidden ports or altered service layouts.
- `Precision of intent`: each command is executed to answer a specific question, not to generate noise.
- `Rhythm and maai`: the kata alternates reveal, probe, identify, and confirm.
- `Control and safety`: it is low-risk and bounded to authorized practice hosts.
- `Ethical and cultural frame`: uke and tori cooperate to improve mutual understanding rather than to win by concealment alone.

## Source material

- [techniques.md](../techniques.md)
- [courses/summer-2023/day1.md](../courses/summer-2023/day1.md)
- [courses/summer-2026/day1.md](../courses/summer-2026/day1.md)

## Type

Paired kata.

## Roles

- `Uke`: the observed host
- `Tori`: the discovering practitioner

## Objective

Tori identifies the open services of uke and names the relevant ports and service roles with minimal wasted action.

## Sequence

Both practitioners perform `rei` and confirm the authorized scope.

#### Uke

*Uke* reveals the host address.
```bash
ip a
```

#### Tori

*Tori* observes the address and states the target before acting.

*Tori* performs service discovery.
```bash
nmap $UKE_IP_ADDRESS
```

*Tori* reads the result aloud and identifies:
- open ports
- probable service names
- which service appears to be the preferred entry point

#### Result

*Uke* confirms or corrects the reading.

## Success criteria

- Tori identifies the correct IP address.
- Tori identifies the relevant open ports.
- Tori maps ports to likely services correctly.
- Tori avoids unnecessary extra commands.
- Both practitioners can explain what was learned from the scan.

## Progressive variants

- Beginner: uke uses default service ports.
- Intermediate: uke changes one service port before the kata.
- Advanced: uke exposes multiple services and tori must rank them by likely value.

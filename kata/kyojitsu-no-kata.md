# Kyojitsu no Kata

## Why this is a relevant kata

This kata formalizes deception and verification. It is relevant because the repository already includes fake service listening and discovery drills, which teach an important Cyberjutsu principle: not every open port is meaningful, and not every apparent opportunity should be trusted without confirmation. This gives the curriculum a kata about lure, doubt, and disciplined validation.

### Criteria from [kata-common-principles](../references/kata-common-principles.md)

- `Clear pedagogical purpose`: teach deceptive presentation and disciplined verification of exposed services.
- `Fixed structure with repeatable standard`: open lure, discover lure, connect, validate, disengage.
- `Technical coherence`: based on existing `nc`, `nmap`, and monitoring practices in the repository.
- `Embodied principles`: trains deception, restraint, verification, and reading of intent.
- `Link to application`: corresponds to honeypot thinking, bait services, and cautious service interaction.
- `Progressive difficulty`: can move from obvious fake services to more plausible decoys.
- `Precision of intent`: the student must distinguish "open" from "useful" and "reachable" from "trusted".
- `Rhythm and maai`: invitation, approach, test, recognition, withdrawal.
- `Control and safety`: the exchange is bounded to lab ports and simple text interaction.
- `Ethical and cultural frame`: reinforces that Cyberjutsu values understanding and control over reckless exploitation.

## Source material

- [courses/summer-2023/day2.md](../courses/summer-2023/day2.md)
- [courses/thcon-2024/short-discovery.md](../courses/thcon-2024/short-discovery.md)
- [techniques.md](../techniques.md)

## Type

Paired kata.

## Roles

- `Tori`: host creating the deceptive opening
- `Uke`: investigator validating the opening

## Objective

Uke discovers a fake exposed service, connects to it in a controlled manner, and determines that the surface is a lure rather than a trusted service.

## Sequence

1. Both practitioners perform `rei`.
2. Tori opens a fake listening service.
```bash
sudo nc -k -l -p $PORT
```
3. Uke performs discovery against tori.
```bash
nmap -A $TORI_IP_ADDRESS
```
4. Uke identifies the suspicious or interesting port.
5. Uke connects carefully to validate the service.
```bash
nc $TORI_IP_ADDRESS $TORI_PORT
```
6. Tori responds with simple text or silence to emphasize ambiguity.
7. Uke states whether the service appears real, fake, or insufficiently verified.
8. Uke disconnects cleanly.
9. Roles switch.

## Success criteria

- Uke discovers the open port.
- Uke validates by interaction instead of assumption.
- Uke explains what evidence supports the conclusion.
- Uke does not over-claim certainty beyond the observed behavior.

## Progressive variants

- Beginner: one obvious decoy port.
- Intermediate: tori opens multiple ports and only one is interactive.
- Advanced: tori makes the decoy resemble a known service and uke must justify why the confidence level remains limited.

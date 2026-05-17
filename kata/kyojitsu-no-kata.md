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

Both practitioners perform `rei`.

#### Tori

*Tori* opens a fake listening service.
```bash
sudo nc -k -l -p $PORT
```

#### Uke

*Uke* performs discovery against tori.
```bash
nmap -A $TORI_IP_ADDRESS
```

*Uke* identifies the suspicious or interesting port.

*Uke* connects carefully to validate the service.
```bash
nc $TORI_IP_ADDRESS $TORI_PORT
```

#### Tori

*Tori* responds with simple text or silence to emphasize ambiguity.

#### Result

*Uke* states whether the service appears real, fake, or insufficiently verified, then disconnects cleanly.

## Variant 1: Return Through The Existing Session

This version uses an already established cleartext session to present false information and shape uke's perception without launching a separate return attack.

#### Uke

*Uke* connects to tori on port `4444`.
```bash
nc $TORI_IP 4444
```

#### Tori

*Tori* listens on TCP port `4444` and confirms the established connection.
```bash
nc -lvnp 4444
ss -tnp | grep 4444
```

*Tori* injects false information into the live session.
```bash
echo "authentication failed for root" > /proc/$(pgrep -n nc)/fd/1
echo "retry with backup account" > /proc/$(pgrep -n nc)/fd/1
```

#### Result

*Uke* sees the fake messages in the same session and closes the connection.

## Variant 2: Return To A Real Listening Port On Uke

This version adds a separate listener on uke so that tori can send false information to a real service exposed by uke.

#### Uke

*Uke* opens a real listening service on TCP port `5555`, then connects to tori on port `4444`.
```bash
nc -lvnp 5555
nc $TORI_IP 4444
```

#### Tori

*Tori* opens a listening service on TCP port `4444`, confirms uke's listener, and connects back to it.
```bash
nc -lvnp 4444
nmap -p 5555 $UKE_IP
nc $UKE_IP 5555
```

*Tori* sends false operational messages to uke's listener.
```bash
echo "system update channel ready"
echo "send diagnostic report"
```

#### Result

*Uke* sees the deceptive messages arrive on the `5555` listener session.

## Variant 3: Telnet Stream Injection At Connection Time

This version uses telnet because the protocol is cleartext and easy to observe in a lab. The purpose is not to counter-attack inside the attack, but to insert misleading information into the exchange and shape uke's perception.

#### Uke

*Uke* connects to tori with a telnet client and waits inside the cleartext session.
```bash
telnet $TORI_IP 2323
```

#### Tori

*Tori* opens a simple cleartext service on TCP port `2323` and identifies the established telnet connection.
```bash
nc -lvnp 2323
ss -tnp | grep 2323
```

*Tori* injects misleading information into the live telnet stream.
```bash
printf 'NOTICE: password expired\r\n' > /proc/$(pgrep -n nc)/fd/1
printf 'login with backup operator account\r\n' > /proc/$(pgrep -n nc)/fd/1
printf 'service maintenance window active\r\n' > /proc/$(pgrep -n nc)/fd/1
```

#### Result

*Uke* sees the injected messages, then exits the telnet session.

## Success criteria

- Uke discovers the open port.
- Uke validates by interaction instead of assumption.
- Uke explains what evidence supports the conclusion.
- Uke does not over-claim certainty beyond the observed behavior.

## Progressive variants

- Beginner: one obvious decoy port.
- Intermediate: tori opens multiple ports and only one is interactive.
- Advanced: tori makes the decoy resemble a known service and uke must justify why the confidence level remains limited.

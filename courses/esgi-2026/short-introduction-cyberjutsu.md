# Cyberjūtsu short discovery course — ESGI Toulouse 2026

Friday, **18 September 2026**, at [ESGI Toulouse Campus](https://www.esgi.fr/campus-toulouse.html), Campus Eductive Toulouse, 22 Impasse Charles Fourier, 31200 Toulouse.

The same **1h30 discovery course** is repeated for three different groups. All times are local to Toulouse (Europe/Paris).

| Time | Group / break |
| --- | --- |
| 08:00–09:30 | Groupe 1 |
| 09:30–09:45 | Break — 15 minutes |
| 09:45–11:15 | Groupe 2 |
| 11:15–11:30 | Break — 15 minutes |
| 11:30–13:00 | Groupe 3 |

## Course timing

| Elapsed time | Duration | Practice |
| --- | --- | --- |
| 00–05 | 5 min | Background, Presentation of Cyberjutsu, Reigi |
| 05–10 | 5 min | Warmup |
| 10–30 | 20 min | SSH Uchikomi — Yomi Waza |
| 30–50 | 20 min | Bōgyo Waza — Nagekomi |
| 50–65 | 15 min | Kōgeki Waza — Nagekomi |
| 65–75 | 10 min | Yakusoku geiko |
| 75–85 | 10 min | Randori |
| 85–90 | 5 min | Cooldown, Mokusō, Greetings |

**Repetition is central:** each technical exercise is performed **ten times by each partner**. Demonstrations, role exchanges, and reconnections are included in the technical blocks. Repetition builds familiarity so practitioners can focus on the exchange rather than reading their notes.

If a group needs more time for repetition, shorten Yakusoku geiko first, then Randori. Keep the ten repetitions for each partner and the five-minute closing sequence; finish at the scheduled end time.

The course uses prepared, matching cyberdecks on the isolated dojo network. Before each group starts, the Sensei checks that the cyberdecks have the same starting configuration, the practice account and SSH service are available, and the terminals are ready for the next group, following the [fight rules](../../rules.md#environment).

## Background

Introduction from WOCSA on the [principles of Cyberjūtsu](../../principle.md).

Cyberjūtsu is a way to teach cybersecurity inspired by Japanese martial arts. Beginners and experienced practitioners work together through repeated techniques and sparring.

- [Seiryoku zen yo](../../glossary.md#seiryoku-zen-yo): maximum efficiency with minimum effort.
- [Jita Kyôei](../../glossary.md#jita-koei): mutual welfare and benefit; help each other progress.

Source: [DEFCON 32 — Background and Presentation](../defcon32-2024/adversary-village-workshop.md#background).

## Presentation of Cyberjutsu

### Why do we apply martial arts to cybersecurity?

- Improve coordination between mind and movements.
- Train to act in stressful situations.
- Develop fast and accurate reflexes.
- Learn to improvise in unfamiliar events.
- Teach a code of conduct and respect for others.

### Key elements of practice

- [Reigi / Rei](../../glossary.md#rei): etiquette and respect for the dojo, the Sensei, and the partner.
- [Tori](../../glossary.md#tori) performs the technique being studied; [Uke](../../glossary.md#uke) receives it. Tori can therefore be practising a defensive technique while Uke supplies the incoming connection. Exchange roles so both partners learn.
- [Yomi Waza](../../glossary.md#yomi-waza): read and monitor activity.
- [Kōgeki Waza](../../glossary.md#kogeki-waza) and [Bōgyo Waza](../../glossary.md#bogyo-waza): attack and defense techniques.
- [Uchikomi](../../glossary.md#uchikomi): repetition to practise entry and precision. [Nagekomi](../../glossary.md#nagekomi): repetition including completion of the technique.
- [Yakusoku geiko](../../glossary.md#yakusoku-geiko): agreed-upon practice. [Randori](../../glossary.md#randori): free practice with a partner.

### Dojo rules

Apply the [moral code](../../moral-code.md), especially etiquette, self-control, mutual aid, and kindness, and the [fight rules](../../rules.md).

- The dojo is a closed network disconnected from other networks. Only the cyberdecks of partners engaged in the practice may be targeted.
- Practitioners start with equal equipment and configuration. Services remain functional and available, using only the credentials allowed in the dojo.
- Follow the Sensei and arbiter. Wait for instruction before using the cyberdeck or beginning an exchange.
- **Hajime** ([glossary: Hadjime](../../glossary.md#hadjime)): begin or resume.
- **Mate** ([glossary: Matte](../../glossary.md#matte)): stop actions and return to the starting position, with a clear prompt and no running actions remaining.
- **Sonomama** ([Sono mama](../../glossary.md#sono-mama)): freeze the current situation without new actions.
- **Sore made**: end the exchange and stop actions.
- During sparring, participate in the exchange: do not remain only defensive, use only fake attacks, or prevent the partner from attacking through sustained blocking.

## Reigi (Greetings)

Stand formally behind the cyberdeck, facing the Sensei. Bow on **Otagai Ni Rei**, then **Sensei Ni Rei**.

Before practising with a partner, greet them with Ritsu Rei or **Onegaishimasu**.

Source: [greeting before training](../../rules.md#greeting-before-the-training) and [THCon discovery — Greeting](../thcon-2024/short-discovery.md#greeting).

## Warmup (5 min)

Selected exercises from [DEFCON 32 — Warmup](../defcon32-2024/adversary-village-workshop.md#warmup-5min), retaining their repetition counts.

### Eyes

- Look at top right, bottom left, bottom right, top left (x5).

### Hands

- Roll your fingers one by one forward and backward, both hands (x5).
- Touch each finger with your thumb, both hands, forward and backward (x2).

### Combined

- With a partner, Tori moves their fingers and Uke follows with their eyes.

### Typing

On the Sensei's instruction, log in to the prepared cyberdeck with username **cyberjutsuka** and password **hajime**, as in the DEFCON workshops.

Type the short command called by the Sensei, press Enter, and read the first word of the result. Practise `w`, `ls`, and `ps` (x10 each), using the command-typing exercise from the source course.

## SSH Uchikomi — Yomi Waza 読み技 (20 min)

Source: [DEFCON 32 — Uchikomi](../defcon32-2024/adversary-village-workshop.md#uchikomi-打込-hit-in-a-bulk-20min).

### Preparation

Both partners identify and exchange their dojo IP addresses, on their own cyberdecks:

```bash
ip r s
```

In the commands below, replace `$TORI_IP_ADDRESS` or `$UKE_IP_ADDRESS` with that partner's dojo IP address, and `$TORI_USERNAME` or `$UKE_USERNAME` with the practice username. Replace `$PID` with the process identifier found during the exercise. These are placeholders to replace before typing the command.

### Administrative Network Activity Analysis

#### Instructions for students

Both partners follow these steps on their own cyberdecks.

For shortcuts, release **Ctrl+a** before pressing the next key.

1. **Start Screen.**

   ```bash
   screen
   ```

   Press **Enter** if an introductory paragraph appears.

2. **Split the screen vertically.**

   **Ctrl+a** → **|**

   Two panes appear side by side.

3. **Move to the empty pane.**

   **Ctrl+a** → **Tab**

4. **Create a command prompt in this pane.**

   **Ctrl+a** → **Ctrl+c**

5. **Start monitoring connections.**

   ```bash
   watch -n2 'ss -tnp'
   ```

   Leave this running in the monitoring pane.

6. **Return to the original command pane.**

   **Ctrl+a** → **Tab**

   Type the practice commands here. Keep the monitoring pane visible.

#### Screen reminder for the Sensei

The table collects the Screen command and five shortcuts used across the existing Cyberjūtsu courses. Use it during practice to help students arrange or repair their layout. **S** and **X** are uppercase: use **Shift+s** and **Shift+x**.

| Command or shortcut | Action | When to use it |
| --- | --- | --- |
| `screen` | Start Screen from the shell; press Enter if an introductory paragraph appears. | Begin the screen-layout setup on the cyberdeck. |
| **Ctrl+a**, then **\|** | Split the current pane vertically, into left and right panes. | Keep monitoring and commands side by side. |
| **Ctrl+a**, then **Shift+s** (uppercase **S**) | Split the current pane horizontally, into top and bottom panes. | Arrange monitoring above or below the command pane. |
| **Ctrl+a**, then **Tab** | Move keyboard focus to the next pane. | Select the pane where you want to type, or reach an empty pane after splitting. |
| **Ctrl+a**, then **Ctrl+c** | Create a new shell window in the selected pane. | Get a command prompt when a newly split pane is blank. |
| **Ctrl+a**, then **Shift+x** (uppercase **X**) | Remove the selected split pane from the display. | Remove an unwanted split after selecting it with **Ctrl+a**, then **Tab**. |

Removing a pane with **X** does not terminate its shell or running command; it changes the display layout. A pane is a region of the display, while a window contains the shell.

Shortcuts reused from [DEFCON 32 — Uchikomi](../defcon32-2024/adversary-village-workshop.md#uchikomi-打込-hit-in-a-bulk-20min); terminology follows the [GNU Screen manual](https://www.gnu.org/software/screen/manual/screen.html#Regions).

### Remote Terminal Session Detection

#### Uke

From Uke's own cyberdeck, connect to Tori:

```bash
ssh $TORI_USERNAME@$TORI_IP_ADDRESS
```

Enter the practice password. In the remote session on Tori's cyberdeck, run the existing example commands:

```bash
ls
pwd
uptime
```

#### Tori

On Tori's own cyberdeck, observe the connection in the monitoring pane. In the local command pane, list the active sessions and identify the TTY belonging to Uke's SSH connection:

```bash
w
```

Uke closes the remote session before making the next connection.

### Uchikomi (x10 by exercise by partner)

Repeat the connection-and-detection exercise ten times. Exchange roles and repeat ten times so each partner practises detecting the incoming session. The screen layout is prepared once; the connection and its identification are repeated.

## Bōgyo Waza 防御技 — Nagekomi (20 min)

Source: [DEFCON 32 — Bōgyo Waza](../defcon32-2024/adversary-village-workshop.md#bōgyo-waza-防御技-defense-technique).

### Process Termination

#### Uke

From Uke's cyberdeck, connect to Tori again:

```bash
ssh $TORI_USERNAME@$TORI_IP_ADDRESS
```

Run `ls`, `pwd`, or `ps` in the remote session while Tori practises.

#### Tori

On Tori's own cyberdeck, observe the incoming connection. Identify Uke's remote TTY:

```bash
w
```

Find the session process associated with that TTY, using the PID column and the session process whose STAT begins with `Ss`:

```bash
ps -fat
```

Terminate the identified session process on Tori's cyberdeck:

```bash
kill -9 $PID
```

Uke is disconnected. Identify the current TTY and PID again on every repetition, since a new session can have different identifiers.

### Nagekomi (x10 by exercise by partner)

Repeat the complete connection, detection, identification, and termination sequence ten times. Exchange roles and repeat ten times. Each partner practises the defensive disconnection ten times.

## Kōgeki Waza 攻撃技 — Nagekomi (15 min)

Sources: [DEFCON 32 — Kōgeki Waza](../defcon32-2024/adversary-village-workshop.md#kōgeki-waza-攻撃技-attack-technique) and [Summer 2023 Day 1 — Nagekomi](../summer-2023/day1.md#nagekomi-x10-by-exercise-by-partner).

### Process Termination

#### Uke

Remain logged in locally on Uke's cyberdeck to receive the technique.

#### Tori

From Tori's cyberdeck, connect to Uke using the same SSH technique, with Uke as the destination:

```bash
ssh $UKE_USERNAME@$UKE_IP_ADDRESS
```

The following commands run **inside that remote session, on Uke's cyberdeck**.

Identify Uke's local TTY: in the prepared dojo environment, it is the local session without a remote IP address, rather than Tori's incoming SSH session.

```bash
w
```

Find the process associated with Uke's local TTY, using the PID column and the session process whose STAT begins with `Ss`:

```bash
ps -fat
```

Terminate that local session process:

```bash
sudo kill -9 $PID
```

Uke is disconnected from their local session. Tori closes the remote session and Uke logs back in for the next repetition. Restore the practice panes as needed.

### Nagekomi (x10 by exercise by partner)

Repeat ten times, identifying the current local session and PID each time. Exchange roles and repeat ten times so each partner performs the local-session attack ten times.

## Yakusoku geiko 約束稽古 (10 min)

Sources: [Summer 2023 Day 1 — Yakusoku geiko](../summer-2023/day1.md#yakusoku-geiko-2) and [DEFCON 32 — Sequenced fight](../defcon32-2024/adversary-village-workshop.md#sequenced-fight).

Use the existing objective: **Tori tries to connect and terminate Uke's local session.** Uke observes and practises the defensive session termination learned above.

### Sequenced fight

- Greet the partner before the exchange.
- **30 seconds to prepare:** apply [Tsukuri](../../glossary.md#tsukuri), preparing the conditions for the next action.
- **3 minutes to practise:** begin on Hajime and stop on Sore made.
- Exchange roles and repeat the same block.
- Use the remaining three minutes for greetings, role exchange, and feedback. Learn from the partner's practice and help each other improve.

## Randori 乱取り (10 min)

Sources: [THCon discovery — Randori](../thcon-2024/short-discovery.md#randori) and [DEFCON 32 — Randori](../defcon32-2024/adversary-village-workshop.md#randori-10min).

Try to disconnect the partner from all their sessions, local and remote, using the techniques already practised.

Practise **three three-minute rounds without preparation**, changing partners after each round. The remaining minute is for greetings and transitions. Start on Hajime and stop on Sore made; follow Mate and Sonomama if called by the arbiter.

Both partners now attack and defend. Keep the dojo rules in force and learn from each exchange.

## Cooldown, Mokusō, Greetings (5 min)

Sources: [THCon discovery — Cooldown](../thcon-2024/short-discovery.md#cooldown) and [greeting after training](../../rules.md#greeting-after-the-training).

### Eyes

- Blink.
- Place your hands over your eyes.

### Hands

- Stretch your fingers in and out of your hands.
- Drop your hands and shake them.

### Body

- Seated: stretch your arms forward.
- Standing: stretch your arms towards the top and pull up your shoulders.

### Mokusō

On **Mokusō**, close your eyes and reflect on the experience and knowledge acquired during practice. On **Mokusō yame**, open your eyes and prepare for Rei.

### Greetings

Stand formally behind the cyberdeck. Bow on **Sensei Ni Rei**, then **Otagai Ni Rei**. Thank the partner with Ritsu Rei or **Domo arigato**. Leave the dojo or shut down the cyberdeck only on the Sensei's instruction.

## Fun proposals from previous courses

These proposals reuse the SSH techniques practised above. Choose one as an alternative objective within the existing Yakusoku geiko slot, after completing the repetitions. Keep its preparation, role exchange, and time limit. Do not add another activity block or remove repetitions to fit a proposal.

### Connect, act, and leave without being observed

Tori tries to connect, run the commands given by the Sensei, and disconnect without being observed by Uke. Exchange roles. Use the SSH connection, monitoring, session identification, and short example commands already practised.

Source: [Summer 2023 Day 1 — Yakusoku geiko](../summer-2023/day1.md#yakusoku-geiko-1).

### Establish three connections before the local-session attack

Tori establishes three connections to the partner's cyberdeck before attempting to terminate the partner's local session. Uke practises detecting and terminating those incoming sessions. Exchange roles. The additional connections use the same SSH and screen techniques already practised.

Source: [DEFCON 32 — Discovery](../defcon32-2024/adversary-village-workshop.md#discovery).

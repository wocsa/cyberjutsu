# Cyberjūtsu cours de découverte rapide pour http://thcon.party 2024

## Salutation

* Yakusoku geiko

## Échauffement

### Yeux

* Regardez en haut à droite, en bas à gauche, en bas à droite, en haut à gauche
(x5)
* Dessinez un cercle avec vos yeux dans les deux sens (x5)
* Dessinez un signe infini avec vos yeux (∞) (x5)

### Mains

* Roulez vos doigts un par un vers l'avant et vers l'arrière, les deux mains (x5)
* Surveillance des journaux
* Ecran partagé entre Tori et Uke avec deux clis.
* Écoutez Sensei numéro (1 à 5) et bougez les doigts correspondants

### Combiné

* Avec un partenaire tori bougez les doigts, uke doit suivre avec les yeux

## Yomi Waza

### Yakusoku geiko

Lancer la surveillance des journaux Yomi Waza.

### Surveillance des journaux (Log Monitoring)

Écran partagé Tori et Uke avec deux interfaces en ligne de commande

```bash
screen
```

*Ctrl+a* puis *Tab* pour revenir à la cli disponible.

Lancer Yomi Waza Log Monitoring.

```bash
tail -f /var/log/syslog
```

*Ctrl+a* puis *Tab* pour revenir à l'interface en ligne de commande disponible.

### Uke

#### Uke

*Uke* scanne le port du cyberdeck de *Tori* pour identifier le port ssh

```bash
nmap -A $UKE_IP_ADRESS
```

*Uke* se connecte via ssh au cyberdeck de *Tori*

```bash
ssh $TORI_USERNAME@$TORI_IP_ADDRESS
```

puis exécute des commandes pendant l'entraînement de *Tori*.

exemples:

```bash
ls
pwd
uptime
uname
netstat
htop
```

#### Tori

*Uke* scanne le port du cyberdeck de *Tori* pour identifier le port ssh

*Uke* se connecte via ssh au cyberdeck de *Tori*

```bash
w
```

### puis exécute des commandes pendant la pratique de *Tori*.

#### Uke

*Uke* se connecte via ssh au cyberdeck de *Tori*

```bash
ssh $TORI_USERNAME@$TORI_IP_ADDRESS
```

puis exécute des commandes pendant l'entraînement de *Tori*.

exemples:

```bash
ls
dir
ps
pwd
fortune
```

#### Tori

exemples:

*Uke* se connecte via ssh au cyberdeck de *Tori*

```bash
w
```

Tori

```bash
ps -fat
```

Uke effectue la connexion

```bash
kill -9 $PID
```

### Uke

Uke effectue la connexion

### Tori

1. Tori effectue la connexion en même temps que Uke
1. Tori effectue la connexion en même temps que Uke

### Nagekomi (x10 par exercice en partenariat)

Arrêter la session locale de l'uke

#### Écoute de faux service

##### Tori

*Tori* ouvre un port pour simuler un service disponible pour *Uke*

```bash
sudo nc -k -l -p $PORT
```

##### Uke

*Uke* scanne le port du cyberdeck de *Tori* pour identifier le port ssh

```bash
nmap -A $UKE_IP_ADRESS
```

Nagekomi (x10 par exercice avec partenaire)

```bash
nc $TORI_IP_ADDRESS $TORI_PORT
```

*Uke* se déconnecte avec CTRL+c

```bash
nc $TORI_IP_ADDRESS $TORI_PORT
```

### Uchikomi (x10 par exercice en partenariat)

*Uke* ouvre un port, *Tori* doit trouver le port et s'y connecter.

## Randori

Essayez de déconnecter le partenaire de toutes ses sessions (locales et à
distance).

## Retour au calme

### Yeux

* Clignotement
* Mains sur

### Mains

* Étirez vos doigts à l'intérieur et à l'extérieur de vos mains
* Laissez tomber vos mains et secouez-les

### Corps

* Assis
   * Étirez les bras vers l'avant
   * tue la session locale de l'uke
   * Fausse écoute de service
* Levez-vous
   * Étirez les bras vers le haut
   * *Tori* ouvre un port pour simuler un service disponible pour *Uke*
   * Relevez les épaules
   * *Uke* se déconnecte avec CTRL+c

## Persévérance (Nintai) 忍耐

## Salutation

* Uchikomi (x10 par exercice avec partenaire)

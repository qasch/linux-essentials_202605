# Übungen zu Netzwerkkonfiguration

## Wissensfragen - Multiple Choice

### Übung 1

Welcher Befehl zeigt die IP-Adresse aller Netzwerkschnittstellen auf einem modernen Linux-System an?

- [ ] a) `ipconfig -a`
- [ ] b) `ip addr show`
- [ ] c) `netstat -i`
- [ ] d) `route show`

### Übung 2

Was bedeutet die CIDR-Notation `/24` bei der IP-Adresse `192.168.1.10/24`?

- [ ] a) Das Netzwerk hat 24 Hosts.
- [ ] b) Die ersten 24 Bits der IP-Adresse sind der Netzwerkanteil.
- [ ] c) Der Host hat die Nummer 24.
- [ ] d) Die Subnetzmaske ist `255.0.0.0`.

### Übung 3

Welche der folgenden IP-Adressen ist eine **private** Adresse gemäß RFC 1918?

- [ ] a) `8.8.8.8`
- [ ] b) `172.32.0.1`
- [ ] c) `10.0.0.1`
- [ ] d) `169.254.0.1`

### Übung 4

Welcher Dienst/Protokoll wird verwendet, um einem Host automatisch eine IP-Adresse zuzuweisen?

- [ ] a) DNS
- [ ] b) DHCP
- [ ] c) NTP
- [ ] d) FTP

### Übung 5

Welche Datei enthält unter Linux typischerweise statische Hostname-zu-IP-Zuordnungen?

- [ ] a) `/etc/resolv.conf`
- [ ] b) `/etc/hostname`
- [ ] c) `/etc/hosts`
- [ ] d) `/etc/networks`

## Praktische Übungen

### Übung 6 – Netzwerkschnittstellen anzeigen

Zeige alle Netzwerkschnittstellen mit ihren IP-Adressen an.

### Übung 7 – Standard-Gateway anzeigen

Zeige die aktuelle Routing-Tabelle an und identifiziere das Standard-Gateway.

### Übung 8 – DNS-Konfiguration prüfen

Zeige an, welche DNS-Server aktuell konfiguriert sind.

### Übung 9 – Verbindung testen

**Übung:** Teste die Netzwerkverbindung zum Host `1.1.1.1` mit **genau 4 Paketen**. Teste danach die Namensauflösung für `www.lpi.org`.

### Übung 10 – Hostnamen anzeigen und verstehen

Zeige den aktuellen Hostnamen des Systems an. Welche Datei speichert den Hostnamen dauerhaft?

### Übung 11 – Netzwerkschnittstelle aktivieren/deaktivieren

Wie aktivierst und deaktivierst du eine Netzwerkschnittstelle namens `eth0`? Nenne die moderne und die ältere Methode.

#### Lösung

```bash
# Moderne Methode (ip):
ip link set eth0 up      # aktivieren
ip link set eth0 down    # deaktivieren

# Ältere Methode (ifconfig):
ifconfig eth0 up
ifconfig eth0 down
```

## Zuordnungsaufgaben

### Übung 12 - Ordne die Befehle ihrer Funktion zu.

| Befehl | Funktion |
|--------|----------|
| `ip addr show` | |
| `ip route show` | |
| `ping -c 4 8.8.8.8` | |
| `cat /etc/resolv.conf` | |
| `hostname` | |
| `ss -tulpn` | |

**Funktionen:**

- A) DNS-Server-Konfiguration anzeigen
- B) Aktuellen Hostnamen ausgeben
- C) Offene Netzwerk-Ports und Verbindungen anzeigen
- D) IP-Adressen aller Schnittstellen anzeigen
- E) Routing-Tabelle anzeigen
- F) Netzwerkverbindung mit 4 Paketen testen

## Szenario-Übungn

### Szenario 1 – Kein Internetzugriff

Du meldest dich auf einem Linux-Server an. Der Server hat angeblich keinen Internetzugriff. Gehe systematisch vor, um das Problem einzugrenzen.

Beschreibe die Diagnoseschritte in der richtigen Reihenfolge und nenne jeweils den passenden Befehl.

### Szenario 2 – Netzwerkinformationen auslesen

**Situation:** Du erhältst folgende Ausgabe von `ip addr show`:

```
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UP
    link/ether 00:1a:2b:3c:4d:5e brd ff:ff:ff:ff:ff:ff
    inet 192.168.10.42/24 brd 192.168.10.255 scope global eth0
```

Beantworte folgende Fragen:

1. Wie lautet die IP-Adresse des Hosts?
2. Wie lautet die Subnetzmaske (ausgeschrieben)?
3. Wie lautet die MAC-Adresse?
4. Ist die Schnittstelle aktiv?
5. Wie lautet die Broadcast-Adresse?

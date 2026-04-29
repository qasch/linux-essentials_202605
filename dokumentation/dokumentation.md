# Dokumentation Linux Essentials

## Unterschied Terminal / Shell

Ein Terminal ist heutzutage ein Programm (früher ein physisches Gerät), das die Ein- und Ausgabe für eine Shell bereitstellt. Das Terminal zeigt an, was die Shell ausgibt und nimmt Tastatureingaben entgegen. Es ist eine Art _Benutzeroberfläche_ durch die wir mit einer Shell interagieren können.

Eine Shell ist ein _Kommando-Interpreter_. Sie nimmt Kommandos entgegen und interpretiert diese.

In Linux dient die Shell unter anderem dazu, als Vermittler zwischen Benutzer und Betriebssytem zu fungieren. Shells werden generell genutzt, um einzelne Befehle (z.B. einer Skriptsprache) zu interpretieren und auszuführen. 

Die Python Shell kann z.B. Python Kommandos ausführen, in einer MySQL Shell können Datenbanken erstellt und verwaltet werden usw.

Unter Linux nutzen wir in der Regel die _BASH_ (_Bourne Again Shell_) als Shell. Auch hier gibt es einige `sh` kompatible Varianten wie die _ZSH_, _KSH_, _Fish-Shell_ etc.

## Kommandos

### Aufbau von Kommandos:

```
<kommando> [-<kurzoption>]... [<argument>]...
<kommando> [--<langoption>]... [<argument>]...
```

Erklärung zur obigen Syntax (angelehnt an Manpages):

- `[  ]` was in eckigen Klammern steht, ist **optional** -> wir können also Optionen oder Argumente übergeben, **müssen** es aber nicht
- `...` die drei Punkte bedeuten, dass auch mehrere Optionen oder Argumente übergeben werden können
- dies ist übrigens die gleiche Syntax, die auch in den Manpages verwendet wird

>[!NOTE]
> Es macht fast immer keinen Unterschied, ob wir die Option(en) vor oder nach den Argumenten schreiben:
> ```bash
> rm -r somedir
> rm somedir -r
>```

#### einige Beispiele 

```
ls -l               # Übergabe der Option -l
ls /etc             # Übergabe des Arguments /etc
ls -la              # Übergabe mehrerer Optionen
ls -al              # Übergabe mehrerer Optionen, Reihenfolge fast immer egal
ls -la /etc /home   # Übergabe mehrerer Optionen und Argumente
```

### Grundlegende Kommandos

- `whoami` gibt den aktuellen Benutzer aus
- `pwd` gibt das aktuelle Verzeichnis aus
- `ls` zeigt den Inhalt von Verzeichnissen an
- einige Optionen von `ls`:
  - `ls -a` ignoriert keine Einträge, die mit einem Punkt beginnen -> zeigt auch "versteckte" Dateien an
  - `ls -l` zeigt ausführliche Details zu den Dateien an
- `touch` erstellt eine leere Datei
- `mkdir` erstellt ein Verzeichnis 
- `cat` gibt den Inhalt einer Datei auf der Kommandozeile aus

### Manpages

*Manual Pages*: eine Art Handbuch zu einzelnen Kommandos, mit Erklärungen zur Syntax, allen Optionen, teilweise Beispielen etc.

- `man <kommando>` 
- z.B. `man ls` Handbuchseite zum Kommando `ls`
- Suche in den Manpages: Eingabe von `/` gefolgt vom Suchbegriff, z.B. `/-l` sucht nach der Option `-l`
- zum nächsten Suchbegriff mit `n`
- zum vorherigen Suchbegriff mit `N`
- zum Anfang der Manpage springen mit `g`
- ans Ende mit `G`
- Manpage schliessen mit `q`

### Help

*Kurzhilfe* zu einem Kommando durch Übergabe der Option `--help` -> `ls --help`

### Shell-Builtins
In die Shell (in unserem Fall BASH) eingebaute Kommandos. Sie sind essenziell bzw. wichtig, damit die Shell an sich funktioniert, z.B. das Kommando `cd`. 

Builtins haben keine eigene Manpage, ihre Funktionsweise ist in der Manpage der BASH erklärt. Eine Kurzhilfe zu den Builtins erhält man mit dem Kommando `help`.

### Extern realisierte Kommandos
Die meisten Kommandos sind _extern realisiert_, d.h. sie sind nicht in die BASH eingebaut. So gut wie alle _extern realisierten_ Kommandos haben eine Manpage (`man <kommando>`) in welcher die Art wie das Kommando zu benutzen ist und sämtliche Optionen mit Erklärungen angegeben sind.

## History

Eine Liste aller bisher eingegebenen Kommandos.

- Blättern durch die History mit den Pfeiltasten oder `STRG+P` bzw. `STRG+N`
- Die History wird zuerst pro Shell im RAM gespeichert, beim Beenden der Shell wird die History in eine Datei geschrieben (z.B. `.bash_history` oder auch `.zsh_history`)
- Die Gröẞe der Datei bzw. die Menge der Einträge kann konfiguriert werden
- Jeder Benutzer hat somit seine eigene History (so z.B. auch der User `root`)
- Mit dem Kommando `history` wird eine Liste aller Befehle inklusive eines Index angezeigt
- Wir können so das Konzept der *History Expansion* nutzen:
  - `!<index>` ruft das Kommando mit `<index>` auf
  - `!-<zahl>` ruft das Kommando mit `<zahl>` von hinten auf
  - `!<zeichenfolge>` ruft das letzte Kommando auf, das mit `<zeichenfolge>` begonnen hat
  - `!?<zeichenfolge>` ruft das letzte Kommando auf, das `<zeichenfolge>` enthält
- Die Tastenkombination `<STRG r>` ruft die *reverse-i-search* auf, so dass wir eine Zeichenfolge eingeben können und das Kommando, welches Zeichenfolge enthält angezeigt wird. Durch erneutes Drücken von `<STRG r>` rufen wir das vorletzte Kommando mit dieser Zeichenfolge auf usw.

## Dateioperationen

### Dateien erstellen mit `touch`

Dateien können auf vielfältige Art und Weise erstellt werden. Ein einfacher Weg, leere Dateien zu erstellen, ist mit dem Kommando `touch`.
```bash
touch <name-der-datei>
touch <name-der-datei-1> <name-der-datei-2> ...
touch <pfad-zur-datei>
```

### Verzeichnisse erstellen mit `mkdir`

Mit dem Kommando `mkdir` (*make directory*) können wir Verzeichnisse erstellen.
```bash
mkdir <name-des-verzeichnisses>
mkdir <pfad-zum-verzeichniss>

TODO
```

### Dateien/Verzeichnisse kopieren mit `cp`

Dateien und Verzeichnisse können mit dem Kommando `cp` (*copy*) kopiert werden.

```bash
cp <quelle> <ziel>
cp <pfad-zur-quelle> <pfad-zum-ziel>
```

**Vorsicht:** Wenn wir eine bestehende Datei als Ziel angeben, wird die Zieldatei **ohne Nachfrage** ersetzt/überschrieben und nicht etwas der Inhalt der Quelldatei an die Zieldatei angefügt oder eine Warnung angezeigt.

Beim Kopieren von Verzeichnissen müssen wir an die Option `-r` (*rekursiv*) denken. 

```bash
cp -r <quellverzeichnis> <zielverzeichnis>
```

Der Grund ist, dass ein Verzeichnis nicht leer ist, die Kopieraktion also wiederholt/_rekursiv_ ausgeführt werden muss.

> [!NOTE] 
> Dies gilt übrigens für sehr viele Kommandos: funktioniert die Anwendung eines Kommandos auf eine Datei, nicht aber auf ein Verzeichnis, so fehlt oft einfach nur die Option `-r`.

### Dateien/Verzeichnisse löschen mit `rm`

Dateien und Verzeichnisse können mit dem Kommando `rm` (*remove*) gelöscht werden.

Analog zum Kopieren von Verzeichnissen müssen wir auch beim Löschen von Verzeichnissen die Option `-r` angeben.


```bash
rm <pfad-zur-datei>
rm -r <pfad-zum-verzeichniss>
```

>[!NOTE]
> Wenn wir eine Datei löschen, so löschen wir nicht die Datei an sich. Wir entfernen lediglich den Dateinamen bzw. Pointer auf die Daten der Datei auf dem Speichermedium. Dieser Bereich im Speicher wird dann als wieder überschreibbar gemeldet.
>
> Die Daten könnten also solange keine weitere Schreiboperation auf diesen Speicherbereich erfolgt ist wiederhergestellt werden.

### Leere Verzeichnisse löschen mit `rmdir`

**Leere** Verzeichnisse können zusätzlich mit dem Kommando `rmdir` gelöscht werden.

Nützlich, um z.B. nach einem Aufräumen sicher zu sein, nur leere Verzeichnisse zu löschen, z.B. mit `rmdir *`. So werden alle leeren Verzeichnisse gelöscht, Verzeichnisse mit Inhalt aber nicht und wir bekommen zusätzlich eine Liste aller Verzeichnisse mit Inhalt.

### Dateien/Verzeichnisse verschieben/umbenennen mit `mv`

Dateien und Verzeichnisse können mit dem Kommando `mv` (*move*) verschoben und umbenannt werden.

Beim Verschieben von Verzeichnissen dürfen wir die Option `-r` *nicht* angeben. Der Grund dafür ist, dass beim Verschieben nicht wie vielleicht angenommen eine Art *ausschneiden* und *einfügen* stattfindet, sondern wie beim Löschen lediglich der Dateiname/Pfad ersetzt wird. 

Es muss also keine rekursive Operation auf dem Speichermedium stattfinden. Das ist auf unten stehendender Illustration vielleicht besser zu erkennen.

Ausnahme: Wird einen Datei auf eine andere Partition/Datenträger verschoben, so findet tatsächlich ein kopieren und anschlieẞdendes Löschen statt.

```bash
mv <quelle> <ziel>
mv <quellverzeichnis> <zielverzeichnis>
mv <alter-name> <neuer-name>
```

### Illustration kopieren, löschen, verschieben

![illustration-cp-rm-mv](./images/cp-mv-rm.png)

## relative und absolute Pfadangaben


Immer wenn wir eine Dateioperation durchführen, müssen wir den Pfad (eine Art *Wegbeschreibung*) zu der jeweiligen Datei angeben. Diese Angabe können wir auf zwei unterschiedliche Arten und Weisen machen: *relativ* oder *absolut*.

### absolute Pfadangaben

Eine *absolute Pfadangabe* beschreibt den Weg ausgehend von der Wurzel `/` (z.B. `C:` in Windows) des Dateisystembaums.

```bash
cp /home/tux/somefile /home/tux/Somedir
```

Absolute Pfadangaben können wir immer daran erkennen, dass das erste Zeichen des Pfades ein Slash `/` ist.

Einzige Ausnahme ist die Tilde `~`, welche den absoluten Pfad zum Heimatverzeichnis des aufrufenden Benutzers symbolisiert. Folgende Pfadangaben sind identisch:

```bash
cd ~/Somedir
cd /home/tux/Somedir
```

### relative Pfadangaben

Eine *relative Pfadangabe* beschreibt den Weg ausgehend vom **aktuellen Standort** (alsoe dem aktuellen Verzeichnis) im Dateisystem.

```bash
cp somefile Somedir/
```

### spezielle Verzeichniseinträge (Special Directory Entries) . und ..

- Sie gehören zur Kategorie der relativen Pfadangaben (Relative Pathnames)
- Sie werden auch als *Pseudodirektoren* (Pseudo-Directories) bezeichnet
- Manchmal nennt man sie auch *Implizite Links* oder *Selbstreferenzierende Einträge*
- Formal sind sie aber einfach reguläre Einträge im Dateisystem, die bei jedem Verzeichnis automatisch vorhanden sind.
- `.` (Punkt) symbolisiert das aktuelle Verzeichnis
- `..` (doppelter Punkt) symbolisiert das übergeordnete Verzeichnis (Parent Directory)

## Editor nano

`nano` ist ein einfacher Editor, der auf den meisten Linux Distributionen vorinstalliert ist. Als Hilfe zur Bedienung wird unten ein Menü mit Tastenkürzeln angezeigt. Hier bedeutet das Zeichen `^` die Taste `STRG`.

Einige wichtige Tastenkombinationen:

- `STRG+O` Datei speichern unter...  (Name kann/muss angegeben werden)
- `STRG+S` Datei speichern (unter dem gleichen Namen)
- `STRG+X` Editor verlassen (bei ungespeicherten Änderungen werden wir gefragt, ob wir diese speichern möchten)












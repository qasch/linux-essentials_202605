# Übungen zu Hard- und Softlinks

Erzeugt in eurem Heimatverzeichnis einen Ordner `hard-und-softlinks` mit den Unterordnern `originals` und `links`. Erstellt nun in `originals` die Dateien `orig1`, `orig2`, `orig3` und `orig4`.

Füllt diese mit jeweils einer Zeile Inhalt (mittles `echo` und Redirects oder einem Editor).

Erstellt zusätzlich einen Ordner `origdir` in `originals` in welchem sich die Dateien `dirfile1` und `dirfile2` befinden sollen.

> [!NOTE] 
> Das Kommando zum Erstellung von Links ist `ln`.
> *Softlink*, *Symlink* und *Symbolischer Link* sind lediglich verschiedenen Namen für die gleiche Art von Links.

## Übung 1: Softlink anlegen

- Erstellt nun jeweils einen **symbolischen Link** von `orig1` nach `links/softlink1`.
- Prüft die Erstellung des Links mit `ls -l ~/hard-und-softlinks/links/softlink1`
- Ändert nun den Inhalt des Links `softlink1`. Prüft nach, ob sich der Inhalt auch in der Originaldatei geändert hat. 
- Löscht nun die Originaldatei `orig1` und versucht anschließend, über den Link `links/softlink1` auf den Inhalt der Datei zuzugreifen.
- Schaut euch jetzt auch nochmal die Ausgabe des Kommandos von oben an:  `ls -l ~/hard-und-softlinks/links/softlink1`

## Übung 2: Softlinks und Berechtigungen

- Erstellt einen weiteren Softlink von `orig2` nach `links/softlink2`. 
- Ändert nun die Berechtigungen des Links auf `600`. 
- Prüft die Berechtigungen auf den Softlink mit `ls -l ~/links/softlink2`. Warum hat das nicht geklappt? Warum sind das so komische Berechtigungen?
- Prüft nun einmal, welche Berechtigungen auf die Originaldatei gesetzt sind. Macht euch klar was hier passiert ist...

## Übung 3: Softlink löschen

- Löscht nun den Link. 
- Ist das Original noch erhalten?

## Übung 4: Softlink auf Verzeichnisse

- Verlinkt nun das Verzeichnis `origdir` nach `links/linkdir` mit einem Softlink. 
- Was passiert mit den darin enthaltenen Dateien?

## Übung 5: Hardlinks

- Führt obige Aufgaben analog mit Hardlinks aus. 
  - Erstellt jeweils einen  Hardlink von `orig3` nach `links/hardlink3`.
  - Prüft die Erstellung des Links mit `ls -l ~/hard-und-softlinks/links/hardlink3`
  - Was ist der Unterschied zur Erstellugn eines Softlinks?
  - Ändert nun den Inhalt des Links `hardlink3`. Prüft nach, ob sich der Inhalt auch in der Originaldatei geändert hat. 
  - Löscht nun die Originaldatei `orig3` und versucht anschließend, über den Link `links/hardlink3` auf den Inhalt der Datei zuzugreifen. Warum geht das noch?
  - Schaut euch jetzt auch nochmal die Ausgabe des Kommandos von oben an:  `ls -l ~/hard-und-softlinks/links/hardlink3`

## Übung 6: Anzahl der Hardlinks

- Erzeugt einen weiteren Hardlink von `orig4` nach `links/hardlink3`. 
- Ermittelt nun mit den Kommandos `ls` und `stat`, wie viele Links auf die Dateien `orig3` und `orig4` gesetzt sind.
- Probiert auch einmal die Option `-i` von `ls` aus. Diese zeigt die *Inode* einer Datei an. 
- Lasst euch also jeweils die Inode des Hardlinks und des "Originals" anzeigen.
- Macht das gleiche einmal mit Softlinks und deren "Original"
- Gibt es bei Hardlinks eigentlich genauso eine "Originaldatei" wie bei Softlinks?

## Übung 7: Unterschied Hard- und Softlink

- Was genau ist also ein Hardlink?
- Was ist der Unterschied zu einem Softlink?

## Übung 8: unlink

Um Links zu löschen, kann auch das Kommando `unlink` verwendet werden. Probiert das einmal aus. Was passiert, wenn man `unlink` auf eine _normale_ Datei anwendet? Warum?

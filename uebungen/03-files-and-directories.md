# Übungen zu Dateien und Verzeichnissen

>[!NOTE]
> Erstellt ein Verzeichnis `uebungen-dateien-verzeichnisse` in eurem Heimatverzeichnis und wechselt dort hinein (`cd ~/uebungen-dateien-verzeichnisse`). 
>
> Dieses Verzeichnis ist nun das **aktuelle Verzeichnis** für die folgenden Übungen.

## Aufgabe 1

1. Erstellt ein Verzeichnis mit dem Namen `my_folder` im aktuellen Verzeichnis mit dem Kommando `mkdir`.

2. Erstellt eine leere Datei mit dem Namen `my_file.txt` im aktuellen Verzeichnis mit dem Kommando `touch`.

3. Kopiert die Datei `my_file.txt` in das Verzeichnis `my_folder` mit dem Kommando `cp`.

4. Erstellt eine Kopie der Datei `my_file.txt` mit dem Namen `my_file_copy.txt` im aktuellen Verzeichnis.

5. Kopiert die Datei `my_file_copy.txt` in das Verzeichnis `my_folder` mit dem Kommando `cp`.

6. Löscht die Datei `my_file_copy.txt` im aktuellen Verzeichnis mit dem Kommando `rm`.

7. Löscht anschliessend die Datei `my_file_copy.txt` im Verzeichnis `my_folder`

8. Löscht nun das Verzeichnis `my_folder` inklusive aller darin enthaltenen Dateien und Unterverzeichnisse.

## Aufgabe 2

1. Erstellt ein Verzeichnis mit dem Namen `my_files` im aktuellen Verzeichnis und darin die fünf folgenden Dateien: 
```bash
file1.txt
file2.txt
file03.txt
other_file.txt
image1.jpg
image2.jpg
```

2. Erstellt ein Verzeichnis mit dem Namen `my_files.backup` im aktuellen Verzeichnis und kopiert das gesamte Verzeichnis `my_files` inkl. Inhalt in dieses Verzeichnis. So habt ihr eine Kopie der Dateien, falls bei den Übungen etwas schief geht.

3. Erstellt ein Verzeichnis mit dem Namen `images` im aktuellen Verzeichnis und kopiert nun *mit einem Kommando* alle Dateien aus `my_files` mit der Erweiterung `.jpg` in dieses Verzeichnis. Hierbei könnte euch *Pattern Matching* behilflich sein. Dies ist in der Manpape der BASH ausführlich erklärt. Ruft die Manpage mit `man bash` auf und sucht dort nach dem Abschnitt `Pattern Matching` mit `/^ *Pattern Matching *$`. Dies ist ein regulärer Ausdruck, da sprechen wir nachher drüber.

4. Erstellt ein Verzeichnis mit dem Namen `important_files` im aktuellen Verzeichnis und verschiebt die Dateien `file1.txt` und `file2.txt` möglichst elegant aus `my_files` in dieses Verzeichnis.

5. **Zusatz:** Löscht nun alle Dateien aus `my_files`, **außer** der Datei `other_file.txt` in einem Schritt.

## Aufgabe 3

1. Erstellt ein Verzeichnis mit dem Namen `MyDir` in eurem Heimatverzeichnis.

2. Versucht nun, *in einem Schritt* folgende Verzeichnisstruktur zu erstellen: `mkdir /home/<user>/MyDir/UnterDir/UnterUnterDir`. Was fällt euch auf? Wie könnt ihr das gewünschte Ziel trotzdem erreichen? Konsultiert dazu evtl. die Manpage von `mkdir`.

3. Erstellt im Verzeichnis `MyDir` drei Dateien mit beliebigem Namen.

4. Kopiert nun in *einem Schritt* alle drei Dateien nach `~/MyDir/UnterDir/UnterUnterDir`.

5. Verschiebt jetzt die drei Dateien von `MyDir` nach `~/Mydir/Unterdir`. Benennt anschließend das Verzeichnis `UnterDir` in `MyFiles` um.

6. Löscht zuerst alle Dateien in `UnterUnterDir` mit einem Befehl und löscht danach das nun leere Verzeichnis. Verwendet für den letzten Schritt *nicht* das Kommando `rm`.

## Aufgabe 4

1. Was passiert, wenn ihr versehentlich versucht, drei Dateien auf der gleichen Befehlszeile in eine bereits vorhandene Datei zu kopieren anstatt in ein Verzeichnis?

2. Was passiert, wenn ihr mit `mv` ein Verzeichnis in sich selbst verschiebt?

3. Verwendet die Man Page von `cp`, um herauszufinden, wie man eine Kopie einer Datei erstellt, so dass die Berechtigungen und Änderungszeiten mit dem Original übereinstimmen.

4. Angenommen, ihr befindet euch im folgenden Verzeichnis: `/opt/someprog/config/system/users`

In welchem Verzeichnis befindet ihr euch, wenn ihr folgenden Befehl eingeben würdet:
```bash
 cd ../users/../././../../././././../
 ```

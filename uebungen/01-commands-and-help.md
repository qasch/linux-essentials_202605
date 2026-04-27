# Übungen zu Kommandos und Manpages

## Hilfe auf der Kommandozeile

### Übung 1

Macht euch mit Manpages vertraut. Werft dazu einen Blick in die Manpage von `man`. Ihr müsst hier nicht die komplette Manpage lesen, es reichen die Abschnitte `NAME, SYNOPSIS, DESCRIPTION` und `EXAMPLES` bzw. deren deutschen Bezeichnungen `NAME`, `SYNTAX`, `BESCHREIBUNG` und `BEISPIELE`.

### Übung 2

Findet die Bedeutung der folgenden Optionen von `ls` mit Hilfe der Manpage heraus:
```
-r
-X
-l
-a
-d
-S
-i
-p
-t
-R
```
Probiert die Optionen natürlich auch aus! Dazu macht es vielleicht Sinn, sich den Inhalt eines Verzeichnisses mit vielen Einträgen anzeigen zu lassen, z.B. mit `ls /etc`. 

>[!NOTE]
> Einige Optionen machen alleine für sich keinen Sinn, z.B. die Option `-d`. Kombiniert sie vielleicht mal mit einem `-l`... Kombiniert generell mal mehrere Optionen miteinander.

Findet heraus, was die einzelnen Optionen von `ls` bewirken:
```
ls -lisahF
```
### Übung 3 (Zusatz)

Mit dem Kommando `date` kann man sich das aktuelle Datum und die aktuelle Uhrzeit ausgeben lassen. `date` kann aber noch mehr.

1. Angenommen, jetzt ist der 15.05.2025, 13:34 Uhr und 56 Sekunden. Studieret die Dokumentation von `date` und gebt die Formatierungsanweisungen an, mit denen die folgenden Ausgaben erreichen werden können:

   1. 15.05.2025
   2. 13:34 Uhr (aktuelle Uhrzeit)

2. Wie spät ist es denn gerade in Los Angeles? Versucht die Lösung zuerst in den Manpages zu finden, recherchiert ansonsten im Internet.

## Arten von Kommandos

### Übung 4

Welche der folgenden Kommandos sind bei der BASH extern bzw. intern realisiert? Bzw. was bedeutet das denn überhaupt _intern_ bzw. _extern_ realisiert?
```
alias
echo
rm
test
```
Vielleicht hilft euch hier das Kommanod `type` weiter.

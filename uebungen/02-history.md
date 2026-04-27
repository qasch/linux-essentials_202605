# Übungen zur History

## History

### Übung

Macht euch mit den Funktionen der History vertraut, indem ihr euch die Manpage (`man history`) anschaut (hier geht es konkret um den Abschnitt `HISTORY EXPANSION`) und anschließend mit den folgenden Kommandos "herumspielt". Schreibt auf, was man mit den folgenden Kommandos erreichen kann. 

>[!NOTE]
> `<index>` und `<zeichenfolge>` sind hier im Folgenden als Platzhalter zu verstehen, `<Strg+r>` meint die Tastenkombination von `STRG` und `r`.

```bash
 history 
 history <index>

 !!
 !-<index>
 !<index>
 !<zeichenfolge> 
 !?<zeichenfolge>

 !$
```

 Was passiert, wenn ihr folgende Tastenkombination eingebt:
 ```
 <Strg+r><zeichenfolge> gefolgt von <Strg+r> (mehrmals)
 ```
 also z.B.
 ```
 <Strg+r>man
 ```
 und dann `<Strg+n>` drückt?
 

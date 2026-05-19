#!/usr/bin/env bash

# (simples) backup script
#
# TODO und Ideen:
# - Backup erstellen von:
#   - [x] Homeverzeichnis
#   - [ ] später erweitern
# - tar nutzen plus Komprimierung (-> welche?)
# - späterer Ausbau:
#   - [x] Backups in einem bestimmten Verzeichnis ablegen -> ~/backups
#   - [x] dieses Verzeichnis vom Backup ausschliessen (so dass Backups nicht mit ins Backup kommen)
#   - [x] Option: Backups auf externen Datenträger sichern

DEST_DIR=/mnt/backups
DIRS_TO_BACKUP=/home/tux
TIMESTAMP=$(date +%Y%m%d_%H%M)

# Testen, ob das Script mit root Rechten ausgeführt wird
# Script mit exit code 1 beenden falls nicht
if [ "$(whoami)" != "root" ]; then
        echo ERROR: Das Script muss mit root Rechten ausgeführt werden.
        exit 1   # Beendet das Script mit einem Exit Code 1 -> Fehler
fi

# Prüfen, ob Partition /dev/sdb1 in /mnt gemountet ist
# Falls nicht mounten
if [ "$(mount | grep sdb1 | cut -d' ' -f3)" != "/mnt" ]; then
        echo WARNING: Partition /dev/sdb1 ist nicht nach /mnt gemountet.
        echo WARNING: Versuche /dev/sdb1 nach /mnt zu mounten...
        mount /dev/sdb1 /mnt
        if [ $? -eq 0 ]; then
                echo INFO: /dev/sdb1 erfolgreich nach /mnt gemountet
        else
                echo ERROR: Fehler beim mounten von /dev/sdb1 nach /mnt
                exit 2   # Beendet das Script mit einem Exit Code 2 -> Fehler
        fi
fi

# DEST_DIR erstellen falls es nicht existiert
if [ ! -d $DEST_DIR ]; then
        mkdir $DEST_DIR
fi

# Backup erstellen und mit bzip2 komprimieren
tar --create --bzip2 --file $DEST_DIR/backup_$TIMESTAMP.tar --exclude=$DEST_DIR $DIRS_TO_BACKUP

# Script sauber mit exit Code 0 beenden
exit 0

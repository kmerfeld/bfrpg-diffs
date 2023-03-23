#!/usr/bin/env sh

zip --delete Basic-Fantasy-RPG-Rules.odt "Pictures/*"
libreoffice --headless --convert-to fodt Basic-Fantasy-RPG-Rules.odt
odt2txt Basic-Fantasy-RPG-Rules.odt > Basic-Fantasy-RPG-Rules.txt
rm Basic-Fantasy-RPG-Rules.odt
git add Basic-Fantasy-RPG-Rules.txt Basic-Fantasy-RPG-Rules.fodt
git commit

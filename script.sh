#!/usr/bin/env sh

zip --delete Basic-Fantasy-RPG-Rules.odt "Pictures/*"
pandoc --from=odt Basic-Fantasy-RPG-Rules.odt -o Basic-Fantasy-RPG-Rules.md
libreoffice --headless --convert-to fodt Basic-Fantasy-RPG-Rules.odt
rm Basic-Fantasy-RPG-Rules.odt
git add Basic-Fantasy-RPG-Rules.md Basic-Fantasy-RPG-Rules.fodt
git commit

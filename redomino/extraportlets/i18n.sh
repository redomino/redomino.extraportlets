#!/bin/sh

PRODUCTNAME='redomino.extraportlets'

#i18ndude rebuild-pot --pot locales/${PRODUCTNAME}.pot --merge locales/${PRODUCTNAME}-manual.pot --create ${PRODUCTNAME} .
i18ndude rebuild-pot --pot locales/${PRODUCTNAME}.pot --create ${PRODUCTNAME} .

i18ndude sync --pot locales/${PRODUCTNAME}.pot locales/*/LC_MESSAGES/${PRODUCTNAME}.po

# Compile po files
for lang in $(find locales -mindepth 1 -maxdepth 1 -type d); do
    if test -d $lang/LC_MESSAGES; then
        msgfmt -o $lang/LC_MESSAGES/${PRODUCTNAME}.mo $lang/LC_MESSAGES/${PRODUCTNAME}.po
    fi
done



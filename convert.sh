#!/bin/bash
# 2024-03-06 Hyperling
# PanDoc Usage: https://pandoc.org/MANUAL.html#general-writer-options

date

ebook="HyperlingsHealthProtocol.pdf"

if [[ -e $ebook ]]; then
	echo -n "Old: "
	du -h $ebook
	rm -v $ebook
fi

pandoc ebook.md \
	-s -N --toc --toc-depth=3 \
	-o $ebook
status=$?

echo "Completed with status '$status'."

echo -n "New: "
du -h $ebook

date

exit $status

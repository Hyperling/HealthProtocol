#!/bin/bash
# 2023-03-06 Hyperling
# PanDoc Usage: https://pandoc.org/MANUAL.html#general-writer-options

date

ebook="HyperlingHealthProtocol.pdf"

if [[ -e $ebook ]]; then
	rm -v $ebook
fi

pandoc ebook.md \
	-s -N --toc --toc-depth=3 \
	-o $ebook
status=$?

echo "Completed with status '$status'."

du -h $ebook

date

exit $status

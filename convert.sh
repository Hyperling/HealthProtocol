#!/bin/bash
# 2023-03-06 Hyperling
# PanDoc Usage: https://pandoc.org/MANUAL.html#general-writer-options

date

if [[ -e ebook.pdf ]]; then
	rm -v ebook.pdf
fi

pandoc ebook.md \
	-s -N --toc --toc-depth=3 \
	-o ebook.pdf
status=$?

echo "Completed with status '$status'."

date

exit $status

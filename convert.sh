#!/bin/bash
# 2023-03-06 Hyperling
# PanDoc Usage: https://pandoc.org/MANUAL.html#general-writer-options

date

rm -v ebook.pdf

pandoc ebook.md \
	-s --columns 200 --toc --toc-depth=3 -N \
	-o ebook.pdf
status=$?

echo "Completed with status '$status'."

date

exit $status

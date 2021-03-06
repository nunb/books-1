#!/bin/sh

# Generate EPUB, HTML and A5 version
crowbook trpl1.book
crowbook trpl2.book

# Generate A4 version
crowbook trpl1.book --to pdf --set tex.paper_size a4paper output.pdf trpl1-a4.pdf
crowbook trpl2.book --to pdf --set tex.paper_size a4paper output.pdf trpl2-a4.pdf

# Generate letter version
crowbook trpl1.book --to pdf --set tex.paper_size letterpaper output.pdf trpl1-letter.pdf
crowbook trpl2.book --to pdf --set tex.paper_size letterpaper output.pdf trpl2-letter.pdf



#!/bin/sh

bundle exec wkpdf -p letter --source index.html --output "Tom Jakubowski - Resume.pdf" -m 36
open "Tom Jakubowski - Resume.pdf"
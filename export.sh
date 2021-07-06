#!/bin/sh

oxreveal=$(find ~/.emacs.d/elpa/28.0/develop/ -type d -name "ox-reveal-*" -print -quit)

progn="(progn
  (package-initialize)
  (add-to-list 'load-path \"$oxreveal\")
  (require 'ox-reveal)
  (org-reveal-export-to-html))"

emacs --batch --visit "01-FITS/Anatomy_of_a_FITS_file.org" --eval "$progn" --kill
emacs --batch --visit "02-WCS/Rapid_introduction_to_wcs.org" --eval "$progn" --kill

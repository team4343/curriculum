;;; publish.el --- Publish this curriculum -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2022 NotYourLaptop
;;
;; Author: NotYourLaptop <bob@NotYourLaptop>
;; Maintainer: NotYourLaptop <bob@NotYourLaptop>
;; Created: September 05, 2022
;; Modified: September 05, 2022
;; Version: 0.0.1
;; Keywords: abbrev bib c calendar comm convenience data docs emulations extensions faces files frames games hardware help hypermedia i18n internal languages lisp local maint mail matching mouse multimedia news outlines processes terminals tex tools unix vc wp
;; Homepage: https://github.com/bob/publish
;; Package-Requires: ((emacs "24.3"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  Publish this curriculum
;;
;;; Code:

(require 'ox-publish)
(setq org-publish-project-alist
      '(
        ("org-notes"
         :base-directory "./"
         :base-extension "org"
         :publishing-directory "./build"
         :recursive t
         :publishing-function org-html-publish-to-html
         :headline-levels 4
         :auto-preamble t
         ))

      ("org-static"
       :base-directory "~/org/"
       :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
       :publishing-directory "./build"
       :recursive t
       :publishing-function org-publish-attachment)

      ("org" :components ("org-notes" "org-static")))


(provide 'publish)
;;; publish.el ends here

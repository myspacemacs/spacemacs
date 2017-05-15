;;; config.el --- Typescript Layer Configuration File for Spacemacs
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

<<<<<<< HEAD
(spacemacs|defvar-company-backends typescript-mode)
=======
;; variables
>>>>>>> bff206af3747d17a34797c92677ffa41b1bddcb0

(defvar typescript-fmt-on-save nil
  "Run formatter on buffer save.")

(defvar typescript-fmt-tool 'tide
  "The name of the tool to be used
for TypeScript source code formatting.
Currently avaliable 'tide (default)
and 'typescript-formatter .")

(spacemacs|define-jump-handlers typescript-mode)

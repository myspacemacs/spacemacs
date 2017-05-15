;;; packages.el --- Chrome Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Ben Hayden <hayden767@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(setq chrome-packages '(
                        edit-server
                        gmail-message-mode
                        flymd
<<<<<<< HEAD
=======
                        markdown-mode
>>>>>>> bff206af3747d17a34797c92677ffa41b1bddcb0
                        ))

(defun chrome/init-edit-server ()
  (use-package edit-server
    :init (edit-server-start)
    :config (setq edit-server-default-major-mode 'markdown-mode)))

(defun chrome/init-gmail-message-mode ()
  (use-package gmail-message-mode
    :defer t
    :config
    (when (configuration-layer/layer-usedp 'markdown)
      (spacemacs/set-markdown-keybindings
       'gmail-message-client-mode gmail-message-client-mode-map))))

(defun chrome/init-flymd ()
  (use-package flymd
    :defer t
    :init (setq flymd-browser-open-function
                'spacemacs//flymd-browser-function)))

<<<<<<< HEAD
(defun chrome/init-gmail-message-mode ( )
  (use-package gmail-message-mode))

(defun chrome/init-flymd ()
  (use-package flymd
    :defer t
    :init
    (progn
      (defun start-browser(browser url)
        (let ((process-environment (browse-url-process-environment)))
          (apply 'start-process
                 "flymd" nil
                 browser
                 (list "--new-window" "--allow-file-access-from-files" url))))

      (defun my-flymd-browser-function (url)
               (cond
                (chrome-exec-path (start-browser chrome-exec-path url))
                ((executable-find "chromium") (start-browser (executable-find "chromium") url))
                ((executable-find "google-chrome") (start-browser (executable-find "google-chrome") url))
                ((executable-find "google-chrome-stable") (start-browser (executable-find "google-chrome-stable") url))
                (t (message "no useful browser"))))

      (setq flymd-browser-open-function 'my-flymd-browser-function)
      )))
=======
(defun chrome/pre-init-markdown-mode ()
  (spacemacs|use-package-add-hook markdown-mode
    :pre-config
    (when (configuration-layer/package-usedp 'gmail-message-mode)
      (add-to-list 'markdown--key-bindings-modes 'gmail-message-client-mode))))
>>>>>>> bff206af3747d17a34797c92677ffa41b1bddcb0

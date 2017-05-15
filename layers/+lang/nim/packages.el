(setq nim-packages
      '(company
        flycheck
        flycheck-nim
        nim-mode))

(defun nim/post-init-company ()
<<<<<<< HEAD
  (spacemacs|add-company-hook nim-mode)
  (spacemacs|add-company-hook nimscript-mode))
=======
  (spacemacs|add-company-backends
    :backends company-capf
    :modes nim-mode nimscript-mode))
>>>>>>> bff206af3747d17a34797c92677ffa41b1bddcb0

(defun nim/post-init-flycheck ()
  (spacemacs/enable-flycheck 'nim-mode))

(defun nim/init-flycheck-nim ()
  (use-package flycheck-nim
    :if (configuration-layer/package-usedp 'flycheck)))

(defun nim/init-nim-mode ()
  (use-package nim-mode
    :defer t
    :init
    (progn
<<<<<<< HEAD
      (when (configuration-layer/package-usedp 'company)
        (push 'company-capf company-backends-nim-mode))
=======
>>>>>>> bff206af3747d17a34797c92677ffa41b1bddcb0
      (add-hook 'nim-mode-hook 'nimsuggest-mode)
      (push 'nimsuggest-find-definition spacemacs-jump-handlers-nim-mode))
    :config
    (progn
      (defun spacemacs/nim-compile-run ()
        (interactive)
        (shell-command "nim compile --run main.nim"))

      (spacemacs/set-leader-keys-for-major-mode 'nim-mode
        "cr" 'spacemacs/nim-compile-run
        "gb" 'pop-tag-mark))))


(setq package-archives
      '(("GNU ELPA"     . "https://elpa.gnu.org/packages/")
	("MELPA"        . "https://melpa.org/packages/")
	("ORG"          . "https://orgmode.org/elpa/")
	("MELPA Stable" . "https://stable.melpa.org/packages/")
	("nongnu"       . "https://elpa.nongnu.org/nongnu/"))
      package-archive-priorities
      '(("GNU ELPA"     . 20)
	("MELPA"        . 15)
	("ORG"          . 10)
	("MELPA Stable" . 5)
	("nongnu"       . 0)))

(package-initialize)

;; (winner-mode 1)
;; whitespace-mode
(whitespace-mode 1)

;; ido
(require 'ido-completing-read+)
(ido-mode 1)
(ido-everywhere 1)
(ido-ubiquitous-mode 1)

(global-set-key (kbd "M-x") 'smex)

(global-set-key (kbd "C-x C-f") 'ido-dired)
(global-set-key (kbd "C-x C-d") 'find-file)
(global-set-key (kbd "C-x e") 'shell-command)

;; TRANSPARENT background
(set-frame-parameter nil 'alpha-background 70)

(add-to-list 'default-frame-alist '(alpha-background . 70))

;;helm
(require 'helm)
(require 'helm-ls-git)
(setq helm-ff-transformer-show-only-basename nil)
(global-set-key (kbd "C-x C-r") 'helm-ls-git)

;; Move text
(require 'move-text)
(move-text-default-bindings)

(defun indent-region-advice (&rest ignored)
  (let ((deactivate deactivate-mark))
    (if (region-active-p)
        (indent-region (region-beginning) (region-end))
      (indent-region (line-beginning-position) (line-end-position)))
    (setq deactivate-mark deactivate)))

(advice-add 'move-text-up :after 'indent-region-advice)
(advice-add 'move-text-down :after 'indent-region-advice)

;; auto-complete(company)
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

;;MAGIT
(require 'magit)
(setq magit-auto-revert-mode nil)
;;(global-set-key (kbd "C-c C-g") 'magit-status)
;;(global-set-key (kbd "C-c C-l") 'magit-log)

;; multiple-cursors
(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)

;; electric-pair
(electric-pair-mode 1)

;; highlight-indent-guides
(require 'highlight-indent-guides)
(add-hook 'prog-mode-hook 'highlight-indent-guides-mode)
(add-hook 'text-mode-hook 'highlight-indent-guides-mode)
(add-hook 'html-mode-hook 'highlight-indent-guides-mode)

(setq highlight-indent-guides-method 'bitmap)
(setq highlight-indent-guides-auto-enabled nil)

(set-face-background 'highlight-indent-guides-odd-face "darkgray")
(set-face-background 'highlight-indent-guides-even-face "dimgray")
(set-face-foreground 'highlight-indent-guides-character-face "dimgray")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("fc1275617f9c8d1c8351df9667d750a8e3da2658077cfdda2ca281a2ebc914e0"
     default))
 '(package-selected-packages
   '(async color-theme-modern company dark-mint-theme dired-ranger
	   distinguished-theme haskell-emacs haskell-mode helm
	   helm-org hemisu-theme highlight-indent-guides
	   ido-completing-read+ kosmos-theme lua-mode magit mips-mode
	   move-text multiple-cursors popup riscv-mode rust-mode
	   smart-mode-line smex toxi-theme wfnames
	   whitespace-cleanup-mode)))

;;LANGS
(require 'rust-mode)
(require 'haskell-mode)
(require 'mips-mode)
(require 'riscv-mode)
(require 'verilog-mode)
(require 'lua-mode)


;; THEMES
(setq custom-safe-themes t)
(load-theme 'dark-mint t)
;;(load-theme 'toxi)
;;(load-theme 'hemisu-dark
;;(load-theme 'distinguished)

;; MODELINE
(sml/setup)
(setq sml/theme 'dark)

;;FONT
(set-frame-font "Thabit 14" nil t)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;; disabling top, tool and scroll bars
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

;; line numbers
(display-line-numbers-mode t)
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode t)
(size-indication-mode t)
(column-number-mode t)


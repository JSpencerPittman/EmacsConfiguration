;; Install and enable org
(use-package org :pin gnu)

;; Must do this so the agenda knows where to look for my files
(setq org-agenda-files `("~/org"))

;; When a TODO is set to a done state, record a timestamp
(setq org-log-done 'time)

;; Follow the links
(setq org-return-follows-link  t)

;; Associate all org files with org mode
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

;; Make the indentation look nicer
(add-hook 'org-mode-hook 'org-indent-mode)

;; Automatically continue bulleted lists
(add-hook `org-mode-hook
	  (lambda ()
	    (org-indent-mode 1)
	    (electric-indent-local-mode 1)))
(use-package org-superstar
  :hook (org-mode . org-superstar-mode))

;; Hide the markers so you just see bold text as BOLD-TEXT and not *BOLD-TEXT*
(setq org-hide-emphasis-markers t)

;; Wrap the lines in org mode so that things are easier to read
(add-hook 'org-mode-hook 'visual-line-mode)

;; JIRA project management
(setq org-capture-templates
      '(("j" "Jira Task" entry (file "~/org/jira-tasks.org")
	 "* TODO %^{Ticket}\n %^{Description}\n %^{Fix Version}")))

;; Provide
(provide 'org_cfg)

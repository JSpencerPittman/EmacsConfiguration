(define-derived-mode todo-mode org-mode "TodoMode"
  "Major mode for Project TODOs and associated notes")

;; Associate *.todo files
(add-to-list 'auto-mode-alist '("\\.todo\\'" . todo-mode))

;; Provide
(provide 'todo_mode_cfg)




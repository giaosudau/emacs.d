;; ensime
(add-to-list 'exec-path "/usr/local/bin")
;; scala mode

;; For complex scala files
(setq max-lisp-eval-depth 50000)
(setq max-specpdl-size 5000)
;; Prettify-Symbols
;; (setq prettify-symbols-alist scala-prettify-symbols-alist)
;; (prettify-symbols-mode)

;; SBT
;; allows using SPACE when in the minibuffer
(substitute-key-definition
 'minibuffer-complete-word
 'self-insert-command
 minibuffer-local-completion-map)

(add-hook 'sbt-mode-hook (lambda ()
                           (add-hook 'before-save-hook 'sbt-hydra:check-modified-buffers)))


;; ((sbt-mode
;; (sbt-hydra:projects "api" "core" "ensime" "jerky" "server" "swanky" "util")))

;; ((sbt-mode
;;   (sbt-hydra:command-line-arguments . (
;;                                        ("restApi" . "myconf.conf development")
;;                                        ("jobs" . "delivery_flag")
;;                                        ("identityManager" . "myconf.conf 9001")))))

;; ((sbt-mode
;;   (sbt-hydra:system-properties . (
;;                                   ("macwire" . ("-Dconf.file=myconf.conf" "-Xmx1G"))
;;                                   ("reader" . ("-Dconf.file=myconf.conf" "-Xmx1G"))))))

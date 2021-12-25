;;; pr002.el --- The solution for Project euler problem 2 -*- lexical-binding: t -*-

;; Copyright (C) 2021 TATEISHI Tadatoshi

;; Author: TATEISHI Tadatoshi <ishio39@gmail.com>
;; Created: 2021/12/25

;; This file is NOT part of GNU Emacs.

;;; Commentary:

;; Project euler problem 2.

;;; Code:

(require 'dash)

(defun fib (n)
  (if (< n 2)
      1
    (+ (fib (- n 1)) (fib (- n 2)))))

(defun euler:pr002:answer (n)
  (let ((i 1)
        (res 0)
        f0)
    (setq f0 (fib i))
    (while (< f0 n)
      (if (= (% f0 2) 0)
          (setq res (+ res f0)))
      (setq i (1+ i))
      (setq f0 (fib i)))
    res))

(fset 'euler:pr002:fibonacci 'fib)

(provide 'pr002)

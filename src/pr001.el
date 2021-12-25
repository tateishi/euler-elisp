;;; pr001.el --- The solution for Project euler problem 1 -*- lexical-binding: t -*-

;; Copyright (C) 2021 TATEISHI Tadatoshi

;; Author: TATEISHI Tadatoshi <ishio39@gmail.com>
;; Created: 2021/12/25

;; This file is NOT part of GNU Emacs.

;;; Commentary:

;; Project euler problem 1.

;;; Code:

(require 'dash)

(defun euler:pr001:multiple-of-3-or-5 (n)
  (or (equal (% n 3) 0) (equal (% n 5) 0)))

(defun euler:pr001:answer-with-while (n)
  (let ((i 0)
        (x 0))
    (while (< i n)
      (if (euler:pr001:multiple-of-3-or-5 i)
          (setq x (+ x i)))
      (setq i (1+ i)))
    x))

(defun euler:pr001:answer-with-dash (n)
  (-sum (-filter #'euler:pr001:multiple-of-3-or-5 (-iota n))))

;(fset 'euler:pr001:answer 'euler:pr001:answer-with-while)
(fset 'euler:pr001:answer 'euler:pr001:answer-with-dash)

(provide 'pr001)

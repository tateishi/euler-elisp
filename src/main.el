;;; main.el --- The solution for Project euler -*- lexical-binding: t -*-

;; Copyright (C) 2021 TATEISHI Tadatoshi

;; Author: TATEISHI Tadatoshi <ishio39@gmail.com>
;; Created: 2021/12/25

;; This file is NOT part of GNU Emacs.

;;; Commentary:

;; Project euler main module.

;;; Code:

(require 'pr001)
(require 'pr002)

(princ (format "PR001: The answer is %d\n" (euler:pr001:answer 1000)))
(princ (format "PR002: The answer is %d\n" (euler:pr002:answer 4000000)))

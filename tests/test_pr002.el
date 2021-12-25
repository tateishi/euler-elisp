;;; test_pr002.el --- A test code for Project euler problem 2 -*- lexical-binding: t -*-

;; Copyright (C) 2021 TATEISHI Tadatoshi

;; Author: TATEISHI Tadatoshi <ishio39@gmail.com>
;; Created: 2021/12/25

;; This file is NOT part of GNU Emacs.

;;; Commentary:

;; A test code for Project euler problem 2.

;;; Code:

(require 'ert)
(require 'pr002)

(ert-deftest test-pr002-fibonacci ()
  "Tests for first 10 term of the Fibonacci sequence."
  (should     (= (euler:pr002:fibonacci 1) 1))
  (should     (= (euler:pr002:fibonacci 2) 2))
  (should     (= (euler:pr002:fibonacci 3) 3))
  (should     (= (euler:pr002:fibonacci 4) 5))
  (should     (= (euler:pr002:fibonacci 5) 8))
  (should     (= (euler:pr002:fibonacci 6) 13))
  (should     (= (euler:pr002:fibonacci 7) 21))
  (should     (= (euler:pr002:fibonacci 8) 34))
  (should     (= (euler:pr002:fibonacci 9) 55))
  (should     (= (euler:pr002:fibonacci 10) 89)))

(ert-deftest test-pr002-answer-100 ()
  "Test for answer for 100."
  (should (= 44 (euler:pr002:answer 100))))

;;; test_pr001.el --- A test code for Project euler problem 1 -*- lexical-binding: t -*-

;; Copyright (C) 2021 TATEISHI Tadatoshi

;; Author: TATEISHI Tadatoshi <ishio39@gmail.com>
;; Created: 2021/12/25

;; This file is NOT part of GNU Emacs.

;;; Commentary:

;; A test code for Project euler problem 1.

;;; Code:

(require 'ert)
(require 'pr001)

(ert-deftest test-pr001-multiple-of-3-or-5 ()
  "Tests for multiple of 3 or 5."
  (should     (euler:pr001:multiple-of-3-or-5 0))
  (should-not (euler:pr001:multiple-of-3-or-5 1))
  (should-not (euler:pr001:multiple-of-3-or-5 2))
  (should     (euler:pr001:multiple-of-3-or-5 3))
  (should-not (euler:pr001:multiple-of-3-or-5 4))
  (should     (euler:pr001:multiple-of-3-or-5 5))
  (should     (euler:pr001:multiple-of-3-or-5 6))
  (should-not (euler:pr001:multiple-of-3-or-5 7))
  (should-not (euler:pr001:multiple-of-3-or-5 8))
  (should     (euler:pr001:multiple-of-3-or-5 9))

  )

(ert-deftest test-pr001-answer-10 ()
  "Test for answer for 10."
  (should (equal 23 (euler:pr001:answer 10))))

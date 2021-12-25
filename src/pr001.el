;;; pr001.el --- The solution for Project euler problem 1 -*- lexical-binding: t -*-

;; Copyright (C) 2021 TATEISHI Tadatoshi

;; Author: TATEISHI Tadatoshi <ishio39@gmail.com>
;; Created: 2021/12/25

;; This file is NOT part of GNU Emacs.

;;; License:

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Project euler problem 1.

;;; Code:

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

(fset 'euler:pr001:answer 'euler:pr001:answer-with-while)

(provide 'pr001)

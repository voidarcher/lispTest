;; TITLE:   LISP Test Program for Sanity 
;; AUTHOR:  Bisshoy Anwar 
;;
;; This program is meant to be run in case I want to
;; check that LISP is in fact working, and I am not in
;; some kind of fever dream from which there is no
;; escape. Pretty much all of this was ripped off the 
;; internet from somewhere. 

(format t "Hello, World!~%")
(format t "I am speaking to you from the land of LISP!~%")

(defun toss-coin ()
    "Generate a random heads or tails"

    ;; This thing above us is known as a DOCSTRING
    ;; It simply describes what the function does, and
    ;; it can be multiple lines long. 
    
    (let ((number (random 2 (make-random-state t))))
        (if (= number 0)
            "heads"
            "tails")))

(defun prompt ()
    "Get user input and loop if it is not 'heads' or 'tails'"
  
    (format t "Please enter heads or tails: ")
    (force-output)
    
    (let ((guess (string-downcase (read-line))))
        (if (or (string= guess "heads")
                (string= guess "tails"))
            guess
            (prompt))))

(defun game ()
  "Run the actual game itself."
    
    (if (string= (prompt)
                 (toss-coin))
        (format t "You win!~%")
        (format t "You lose!~%")))

;; Creates a variable named "a" and sets it to 10
(defvar a 10)

(write-line "")
(write-line "If you're reading this, we've set the value of a.")
(write-line "You'll see what the value is in a second.")

(if (> a 20)
    (format t "~%a is greater than 20")			    	    
    (format t "~%a is less than 20"))				   

(format t "~%The value of a is ~d" a)
(write-line "")
(write-line "")

(game)

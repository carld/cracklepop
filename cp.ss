;Write a program that prints out the numbers 1 to 100 (inclusive). 
;If the number is divisible by 3, print Crackle instead of the number. 
;If it's divisible by 5, print Pop. 
;If it's divisible by both 3 and 5, print CracklePop. 
;You can use any language.

(define (cracklepop first last)
  (let loop ((number first))
    (let*
      ((div-by-3?    (= (modulo number 3) 0))
       (div-by-5?    (= (modulo number 5) 0))
       (div-by-both? (and div-by-3? div-by-5?)))
      (cond
        (div-by-both?  (printf "CracklePop~%"))
        (div-by-3?     (printf "Crackle~%"))
        (div-by-5?     (printf "Pop~%"))
        (else          (printf "~a~%" number))))
    (if (<= number last)
      (loop (+ number 1)))))

(cracklepop 1 100)

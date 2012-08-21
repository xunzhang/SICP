; square_root.scm
; Usage: (sqrt-loop 1 2)
; Notice: init guess can not be 0

; define square
(define square (lambda (x) (* x x)))

; define average
(define average 
  (lambda (x y) (/ (+ x y) 2)))

; define "when is something close enough"
(define close-enuf? 
  (lambda (guess x) 
    (< (abs (- (square guess) x)) 0.001)))

; define "how to create a new guess"
(define improve
  (lambda (guess x) 
    (average guess (/ x guess))))

; define "how do we control the process of using new guess in place of the old one"
(define sqrt-loop 
  (lambda (G X)
    (if (close-enuf? G X) 
      G 
      (sqrt-loop (improve G X) X))))


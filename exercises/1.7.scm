; An alternative strategy for implementing good-enough? is to watch how guess
; changes from one iteration to the next and to stop when the change is a very
; small fraction of the guess. Design a square-root procedure that uses this
; kind of end test. Does this work better for small and large numbers?

(define (average x y)
	(/ (+ x y) 2)
)

(define (improve x guess)
	(average guess (/ x guess))
)

(define (relative-change guess last-guess)
	(if (< guess last-guess)
		(/ last-guess guess)
		(/ guess last-guess)
	)
)

(define (good-enough? guess last-guess)
	(<
		(relative-change guess last-guess)
		1.001
	)
)

(define (sqrt-iter x guess last-guess)
	(if (good-enough? guess last-guess)
		guess
		(sqrt-iter x (improve x guess) guess)
	)
)

(define (sqrt x)
	(sqrt-iter x 1.0 0.1)
)

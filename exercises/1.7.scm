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

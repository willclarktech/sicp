; Define a procedure that takes three numbers as arguments and returns the sum
; of the squares of the two larger numbers.

(define (sum-of-squares a b) (+ (square a) (square b)))

(define (f a b c)
	(cond
		((and (<= a b) (<= a c)) (sum-of-squares b c))
		((and (<= b a) (<= b c)) (sum-of-squares a c))
		(else (sum-of-squares a b))
	)
)

; A function f is defined by the rule that
; f(n) = n if n<3 and
; f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3) if n> 3.
; Write a procedure that computes f by means of a recursive process.
; Write a procedure that computes f by means of an iterative process.

(define (recursive-f n)
	(if (< n 3)
		n
		(+
			(recursive-f (- n 1))
			(*
				2
				(recursive-f (- n 2))
			)
			(*
				3
				(recursive-f (- n 3))
			)
		)
	)
)

(define (iterative-f n)
	(define (iter m a b c)
		(if (= n m)
			a
			(iter (+ m 1) (+ a (* 2 b) (* 3 c)) a b)
		)
	)
	(if (< n 3)
		n
		(iter 2 2 1 0)
	)
)

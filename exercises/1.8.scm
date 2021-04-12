(define (improve x y)
	(/
		(+
			(/
				x
				(square y)
			)
			(* 2 y)
		)
		3
	)
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

(define (cube-root-iter x guess last-guess)
	(if (good-enough? guess last-guess)
		guess
		(cube-root-iter x (improve x guess) guess)
	)
)

(define (cube-root x)
	(cube-root-iter x 1.0 0.1)
)

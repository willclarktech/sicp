; The following pattern of numbers is called Pascal's triangle. [See image]
; The numbers at the edge of the triangle are all 1, and each number inside
; the triangle is the sum of the two numbers above it.35 Write a procedure that
; computes elements of Pascal's triangle by means of a recursive process.

; Uses 1-indexed rows and positions
(define (pascal row position)
	(if (or (= position 1) (= position row))
		1
		(+
			(pascal (- row 1) (- position 1))
			(pascal (- row 1) position)
		)
	)
)

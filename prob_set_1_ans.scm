;; Pset 1
;;
;;

(define p1
  (lambda (x y)
    (+ (p2 x y) (p3 x y))))

(define p2
  (lambda (z w)
    (* z w)))

(define p3
  (lambda (a b)
    (+ (p2 a) (p2 b))))

(define fold
  (lambda (x y)
    (* (spindle x)
       (+ (mutilate y)
	  (spindle x y)))))

(define spindle
  (lambda (w) (* w w)))

(define mutilate
  (lambda (z)
    (+ (spindle z) z)))

(define fact
  (lambda (n)
    (if (= n 0)		
	m
	(* n (fact (- n 1))))))

; Exercise 3
(define comb
  (lambda (n k)
    (/ (fact n)
       (* (fact k)
	  (fact (- n k))))))

(comb 243 90)

; Exercise 10
(define cube
  (lambda (x)
    (* x x x)))

(cube 3)

; exercise 11
(define sum-of-cubes
  (lambda (x y)
    (+ (cube x)
       (cube y))))

(sum-of-cubes 2 3)

; Exercise 12
(define bigger
  (lambda (x y)
    (if (> x y)
	x
	y)))

(bigger 3 4)

(define biggest-of-3
  (lambda (x y z)
    (bigger (bigger x y)
	    z)))

(biggest-of-3 11 13 17)

; Exercise 13
(define cube-of-largest
  (lambda (x y z)
    (cube (biggest-of-3 x y z))))

(cube-of-largest 2 3 4)

; Exercise 14
(define square
  (lambda (x)
    (* x x)))

(square 0.5)

(/ 20.00 2)

(define f
  (lambda (x a0 a1 a2 a3)
    (+ a0
       (* a1 x)
       (* a2 (square x))
       (* a3 (cube x)))))

(f 0.5 1 2 3 4)

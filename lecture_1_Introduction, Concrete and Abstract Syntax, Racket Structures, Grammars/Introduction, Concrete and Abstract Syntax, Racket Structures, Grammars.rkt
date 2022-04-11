#lang racket
(struct Int (value))
(struct Prim (op arg*))

(define E1 (Int 10))
(define E2 (Prim '+ (list (Int 10) (Int 5))))

(define (list-max ls)
  (foldl max 0 ls))
  
(define (height e)
  (match e
    [(Int n) 1]
    [(Prim op e*)
      (add1 (list-max (map height e*)))]
  )
)

(height E2)

;;(writeln (list-max E1))
;;(writeln (map (lambda (x) x) (list 1 4 9)))
;;(map ((lambda (x) x)) (list 1 4 9))
;;(map (lambda (x) x) (list 1 2 3 4 5))
;;(writeln (map (lambda (x) x) E2))


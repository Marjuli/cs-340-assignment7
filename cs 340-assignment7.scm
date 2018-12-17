(define (sieve n)
  (let ((bits (make-vector (+ n 1) #t)))
    (let loop ((p 2) (ps '()))
      (cond ((< n p) (reverse ps))
            ((vector-ref bits p)
              (do ((i (+ p p) (+ i p))) ((< n i))
                (vector-set! bits i #f))
              (loop (+ p 1) (cons p ps)))
            (else (loop (+ p 1) ps))))))

(define (is-multiple? first second)
  (if (= (modulo first second) 0) #t #f))


(define remove-multiples-of
  (lambda (item list)
    (cond
     ((equal? (remainder (car list) item ) 0) (cdr list))
     (else (cons (car list) (remove-multiples-of item (cdr list)))))))




(define (generate-int-list n)
  (let generate-int-list  ((i 1))
  (when (<= i n)
    (format #t "~a " i)
    (generate-int-list  (1+ i)))))



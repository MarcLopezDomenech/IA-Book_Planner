(define (domain BookPlanner)
  (:requirements :adl :typing :fluents)

  (:types pendiente normal - libro
    tiempo - object
  )           

  (:predicates
    (leido ?l - libro) 
    (completado ?l - libro)
    (precondicion ?l1 - libro ?l2 - libro)
    (tien_prec ?l-libro)
  )

  (:functions
    (mes_lectura ?l-libro)
    (paginasLibres ?t - tiempo)
    (paginas ?l - libro)
    (paralelo ?l - libro)
    (num ?t -tiempo)
    (mes)
  )

  (:action leer_libro
    :parameters (?l - libro ?t - tiempo)
    :precondition (and (not(leido ?l))
                        (= (mes) (num ?t))
                       (>= (paginasLibres ?t) (paginas ?l))
                       (imply (tien_prec ?l) (forall (?li - libro) (imply (precondicion ?l ?li) (and (completado ?li)(> (mes) (mes_lectura ?li))))))
                   )    
    :effect (and (decrease (paginasLibres ?t) (paginas ?l))
                (leido ?l)
                (assign (mes_lectura ?l) (mes))
            )
  )

  (:action siguiente_mes
    :parameters ()
    :precondition (and (< (mes) 12))    
    :effect ( and
              (increase (mes) 1)
            )
  )

  (:action completar_libro
    :parameters (?l - libro ?t - tiempo)
    :precondition (and (leido ?l)
                       (= (mes) (num ?t))
                       (imply (> (paralelo ?l) 0) (forall (?li - libro) (imply (= (paralelo ?li) (paralelo ?l)) (< (- (mes) (mes_lectura ?li)) 2))))
                   )    
    :effect (and (completado ?l)
              ;(when (> (paralelo ?l) 0) (forall (?li - libro) (when (= (paralelo ?li) (paralelo ?l)) (and(not(leido ?li)) (completado ?li)))))
            )
  )
)
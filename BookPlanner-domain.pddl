(define (domain BookPlanner)
  (:requirements :adl :typing :fluents)

  (:types pendiente normal - libro
          actual - tiempo
  )           

  (:predicates
    (leido ?l - libro) 
    (completado ?l - libro)
    (precondición ?l1 - libro ?l2 - libro)
    (tien_prec ?l-libro)
  )

  (:functions
    (mes ?a - actual)
    (mes_lectura ?l-libro)
    (paginasLibres (mes ?a - actual))
    (paginas ?l - libro)
    (paralelo ?l - libro)
  )

  (:action leer_libro
    :parameters (?l - libro)
    :precondition (and (not(leido ?l))
                       (> (paginasLibres (mes)) (paginas ?l))
                       (imply (tien_prec ?l) (forall (?li - libro) (imply (precondición ?l ?li) (> (mes) (mes_lectura ?li))))
                   )    
    :effect (and (decrease (paginasLibres ?m) (paginas ?l)) 
                  leer(?l ?m)
                  leido(?l)
                  (= (mes) (mes_lectura ?li))
            )
  )

  (:action siguiente_mes
    :parameters ()
    :precondition ((< (mes) 12))    
    :effect (
              (increase (mes) 1)
            )
  )

  (:action completar_libro
    :parameters (?l - libro)
    :precondition (and (leido ?l)
                       (imply (> (paralelo ?l) 0) (forall (?li - libro) (imply (= (paralelo ?li) (paralelo ?l)) (<(decrease (mes) (mes_lectura ?li)) 2))))
                   )    
    :effect (and completado(?l)
            (imply (> (paralelo ?l) 0) (forall (?li - libro) (imply (= (paralelo ?li) (paralelo ?l)) (completado(?li)))))
            )
  )
)

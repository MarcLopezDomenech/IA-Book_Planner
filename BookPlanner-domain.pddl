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
    :parameters (?l - libro ?a - actual)
    :precondition (and (not(leido ?l))
                       (> (paginasLibres (mes ?a)) (paginas ?l))
                       (imply (tien_prec ?l) (forall (?li - libro) (imply (precondición ?l ?li) (> (mes ?a) (mes_lectura ?li))))
                   )    
    :effect (and (decrease (paginasLibres (mes ?a)) (paginas ?l))
                  leido(?l)
                  (= (mes ?a) (mes_lectura ?li))
            )
  )

  (:action siguiente_mes
    :parameters (?a - actual)
    :precondition ((< (mes ?a) 12))    
    :effect (
              (increase (mes ?a) 1)
            )
  )

  (:action completar_libro
    :parameters (?l - libro ?a - actual)
    :precondition (and (leido ?l)
                       (imply (> (paralelo ?l) 0) (forall (?li - libro) (imply (= (paralelo ?li) (paralelo ?l)) (<(decrease (mes ?a) (mes_lectura ?li)) 2))))
                   )    
    :effect (and completado(?l)
            (imply (> (paralelo ?l) 0) (forall (?li - libro) (imply (= (paralelo ?li) (paralelo ?l)) (completado(?li)))))
            )
  )
)

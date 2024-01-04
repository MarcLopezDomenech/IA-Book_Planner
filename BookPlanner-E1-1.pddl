(define (problem BookPlanner-e1_1)
   (:domain BookPlanner)
   (:objects 
      A B C D E - pendiente
      A B C D E- normal
      antes enero febrero marzo abril mayo junio julio agosto septiembre octubre noviembre diciembre - tiempo
    )

  (:init
    (= (mes) 1)
    (= (num enero) 1)
    (= (num febrero) 2)
    (= (num marzo) 3)
    (= (num abril) 4)
    (= (num mayo) 5)
    (= (num junio) 6)
    (= (num julio) 7)
    (= (num agosto) 8)
    (= (num septiembre) 9)
    (= (num octubre) 10)
    (= (num noviembre) 11)
    (= (num diciembre) 12)
    (= (paginasLibres enero) 800)
    (= (paginasLibres febrero) 800)
    (= (paginasLibres marzo) 800)
    (= (paginasLibres abril) 800)
    (= (paginasLibres mayo) 800)
    (= (paginasLibres junio) 800)
    (= (paginasLibres julio) 800)
    (= (paginasLibres agosto) 800)
    (= (paginasLibres septiembre) 800)
    (= (paginasLibres octubre) 800)
    (= (paginasLibres noviembre) 800)
    (= (paginasLibres diciembre) 800)

    (= (paralelo A) 0)
    (= (paralelo B) 0)
    (= (paralelo C) 0)
    (= (paralelo D) 0)
    (= (paralelo E) 0)

    (tien_prec E)

    (precondicion E A)
    (precondicion E B)
    (precondicion E C)
    (precondicion E D)


    (= (paginas A) 0)
    (= (paginas B) 0)
    (= (paginas C) 0)
    (= (paginas D) 0)
    (= (paginas E) 0)
  )

  (:goal (forall (?p - pendiente) (completado ?p)))
)
(define (problem BookPlanner-paralelo2)
   (:domain BookPlanner)
   (:objects 
      P3 - pendiente
      P1 P2 A1 A21 A22 A3 - normal
      antes enero febrero marzo abril mayo junio julio agosto septiembre octubre noviembre diciembre - tiempo
    )

  (:init
    (= (coste) 0)
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

    (= (paralelo P1) 1)
    (= (paralelo P2) 1)
    (= (paralelo P3) 1)
    (= (paralelo A1) 0)
    (= (paralelo A21) 2)
    (= (paralelo A22) 2)
    (= (paralelo A3) 0)

    (precondicion A21 A1)
    (precondicion A22 A1)
    (precondicion A3 A21)
    (precondicion P1 A3)

    (tien_prec A21)
    (tien_prec A22)
    (tien_prec A3)
    (tien_prec P1)

    (= (paginas P1) 0)
    (= (paginas P2) 0)
    (= (paginas P3) 0)
    (= (paginas A1) 0)
    (= (paginas A21) 0)
    (= (paginas A22) 0)
    (= (paginas A3) 0)
  )
  (:metric minimize (coste))
  (:goal (forall (?p - pendiente) (completado ?p)))
)
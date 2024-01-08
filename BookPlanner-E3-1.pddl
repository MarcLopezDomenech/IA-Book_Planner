(define (problem BookPlanner-paralelo1)
   (:domain BookPlanner)
   (:objects 
      P14 P23 P21 - pendiente
      P11 P12 P13 P22 P31 P32 - normal
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

    (= (paralelo P21) 2)
    (= (paralelo P22) 2)
    (= (paralelo P23) 2)

    (= (paralelo P11) 1)
    (= (paralelo P12) 1)
    (= (paralelo P13) 1)
    (= (paralelo P14) 1)

    (= (paralelo P31) 3)
    (= (paralelo P32) 3)

    (= (paginas P21) 500)
    (= (paginas P22) 500)
    (= (paginas P23) 500)
    
    (= (paginas P11) 200)
    (= (paginas P12) 600)
    (= (paginas P13) 300)
    (= (paginas P14) 400)

    (= (paginas P31) 0)
    (= (paginas P32) 0)
  )

  (:metric minimize (coste))
  (:goal (forall (?p - pendiente) (completado ?p)))
)
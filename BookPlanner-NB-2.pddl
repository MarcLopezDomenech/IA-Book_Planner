(define (problem BookPlanner-1deseado-1leido-5libros)
   (:domain BookPlanner)
   (:objects 
      Libro_12 - pendiente
      Libro_1 Libro_2 Libro_3 Libro_4 Libro_5 Libro_6 Libro_7 Libro_8 Libro_9 Libro_10 Libro_11 - normal
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
    (= (paginasLibres enero) 100000)
    (= (paginasLibres febrero) 100000)
    (= (paginasLibres marzo) 100000)
    (= (paginasLibres abril) 100000)
    (= (paginasLibres mayo) 100000)
    (= (paginasLibres junio) 100000)
    (= (paginasLibres julio) 100000)
    (= (paginasLibres agosto) 100000)
    (= (paginasLibres septiembre) 100000)
    (= (paginasLibres octubre) 100000)
    (= (paginasLibres noviembre) 100000)
    (= (paginasLibres diciembre) 100000)

    (= (paralelo Libro_1) 0)
    (= (paralelo Libro_2) 0)
    (= (paralelo Libro_3) 0)
    (= (paralelo Libro_4) 0)
    (= (paralelo Libro_5) 0)
    (= (paralelo Libro_6) 0)
    (= (paralelo Libro_7) 0)
    (= (paralelo Libro_8) 0)
    (= (paralelo Libro_9) 0)
    (= (paralelo Libro_10) 0)
    (= (paralelo Libro_11) 0)
    (= (paralelo Libro_12) 0)

    (precondicion Libro_2 Libro_1)
    (precondicion Libro_3 Libro_2)
    (precondicion Libro_4 Libro_3)
    (precondicion Libro_5 Libro_4)
    (precondicion Libro_6 Libro_5)
    (precondicion Libro_7 Libro_6)
    (precondicion Libro_8 Libro_7)
    (precondicion Libro_9 Libro_8)
    (precondicion Libro_10 Libro_9)
    (precondicion Libro_11 Libro_10)
    (precondicion Libro_12 Libro_11)

    (tien_prec Libro_2)
    (tien_prec Libro_3)
    (tien_prec Libro_4)
    (tien_prec Libro_5)
    (tien_prec Libro_6)
    (tien_prec Libro_7)
    (tien_prec Libro_8)
    (tien_prec Libro_9)
    (tien_prec Libro_10)
    (tien_prec Libro_11)
    (tien_prec Libro_12)

    (= (paginas Libro_1) 200)
    (= (paginas Libro_2) 200)
    (= (paginas Libro_3) 200)
    (= (paginas Libro_4) 200)
    (= (paginas Libro_5) 200)
    (= (paginas Libro_6) 200)
    (= (paginas Libro_7) 200)
    (= (paginas Libro_8) 200)
    (= (paginas Libro_9) 200)
    (= (paginas Libro_10) 200)
    (= (paginas Libro_11) 200)
    (= (paginas Libro_12) 200) 

  )

  (:metric minimize (coste))
  (:goal (forall (?p - pendiente) (completado ?p)))
)



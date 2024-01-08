(define (problem BookPlanner-1deseado-1leido-5libros)
   (:domain BookPlanner)
   (:objects 
      Obelix_y_Cia Teo_va_al_zoologico Asterix_en_Corsica Mickey_Mouse Ben_10 Wally - pendiente
      Teo_va_al_zoologico Asterix_en_Corsica Mickey_Mouse Ben_10 Wally - normal
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

    (= (paralelo Teo_va_al_zoologico) 0)
    (= (paralelo Asterix_en_Corsica) 0)
    (= (paralelo Mickey_Mouse) 0)
    (= (paralelo Ben_10) 0)
    (= (paralelo Wally) 0)
    (= (paralelo Obelix_y_Cia) 0)


    (precondicion Obelix_y_Cia Asterix_en_Corsica)

    (tien_prec Obelix_y_Cia)

    (= (paginas Teo_va_al_zoologico) 200)
    (= (paginas Asterix_en_Corsica) 200)
    (= (paginas Mickey_Mouse) 200)
    (= (paginas Ben_10) 200)
    (= (paginas Wally) 200)
    (= (paginas Obelix_y_Cia) 200)

   

  )

  (:metric minimize (coste))
  (:goal (forall (?p - pendiente) (completado ?p)))
)



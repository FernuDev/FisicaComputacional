program modulo
    implicit none
    real :: a, b

    print *, "Escribe dos números para determinar su módulo: "
    read *, a
    read *, b

    print *, mod(a, b)

end program modulo
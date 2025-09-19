program determinante

    implicit none
    integer :: i
    real :: pos, neg
    real, allocatable :: v1(:), v2(:), v3(:)
    allocate(v1(3), v2(3), v3(3))

    print *, "Ingrese los valores de la primera fila: "
    do i = 1, 3
        read *, v1(i)
    end do

    print *, "Ingrese los valores de la segunda fila: "
    do i = 1, 3
        read *, v2(i)
    end do

    print *, "Ingrese los valores de la tercera fila: "
    do i = 1, 3
        read *, v3(i)
    end do

    pos = v1(1)*v2(2)*v3(3) + v2(1)*v3(2)*v1(3) + v3(1)*v1(2)*v2(3)
    neg = v1(3)*v2(2)*v3(1) + v2(3)*v3(2)*v1(1) + v3(3)*v1(2)*v2(1)

    print *, "El valor del determinante es: "
    print *, pos - neg

    
end program determinante
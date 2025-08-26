program vectores
    implicit none
    integer :: N, i
    real, allocatable :: v1(:), v2(:), suma(:), resta(:), prod_vec(:)
    real :: norma_v1, norma_v2, norma_suma, norma_resta, norma_prod_vec
    real :: prod_punto, angulo_rad, angulo_grados

    print *, "Ingrese la dimensión N de los vectores:"
    read *, N

    allocate(v1(N), v2(N), suma(N), resta(N), prod_vec(3))

    print *, "Ingrese las componentes del vector v1:"
    do i = 1, N
        read *, v1(i)
    end do

    print *, "Ingrese las componentes del vector v2:"
    do i = 1, N
        read *, v2(i)
    end do

    call norma(v1, N, norma_v1)
    call norma(v2, N, norma_v2)

    print *, "Norma de v1 =", norma_v1
    print *, "Norma de v2 =", norma_v2

    do i = 1, N
        suma(i) = v1(i) + v2(i)
        resta(i) = v1(i) - v2(i)
    end do

    call norma(suma, N, norma_suma)
    call norma(resta, N, norma_resta)

    print *, "Vector suma =", suma
    print *, "Norma de la suma =", norma_suma

    print *, "Vector resta =", resta
    print *, "Norma de la resta =", norma_resta

    prod_punto = 0.0
    do i = 1, N
        prod_punto = prod_punto + v1(i)*v2(i)
    end do

    angulo_rad = acos(prod_punto/(norma_v1*norma_v2))
    angulo_grados = angulo_rad * 180.0 / 3.14159265

    print *, "Producto punto =", prod_punto
    print *, "Ángulo entre vectores (grados) =", angulo_grados

    if (N == 3) then
        prod_vec(1) = v1(2)*v2(3) - v1(3)*v2(2)
        prod_vec(2) = v1(3)*v2(1) - v1(1)*v2(3)
        prod_vec(3) = v1(1)*v2(2) - v1(2)*v2(1)

        call norma(prod_vec, 3, norma_prod_vec)

        print *, "Producto vectorial =", prod_vec
        print *, "Norma del producto vectorial =", norma_prod_vec
    else
        print *, "Producto vectorial solo definido para N=3"
    end if

    deallocate(v1, v2, suma, resta, prod_vec)

end program vectores

subroutine norma(v, N, resultado)
    implicit none
    integer, intent(in) :: N
    real, intent(in) :: v(N)
    real, intent(out) :: resultado
    integer :: i
    resultado = 0.0
    do i = 1, N
        resultado = resultado + v(i)**2
    end do
    resultado = sqrt(resultado)
end subroutine norma

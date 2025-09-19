program primeros_100_primos

    implicit none
    integer :: i=1, resultado, count

    do
        call is_p(i, resultado)

        if (resultado == 1) then
            print *, i
            count = count + 1
        end if

        if (count == 100) then
            return
        end if

        i = i + 1

    end do

end program primeros_100_primos

subroutine is_p(a, resultado)

    integer :: a, i, resultado

    if (a >= 1 .AND. a<=3) then 
        resultado = 1
        return 
    end if

    do i=2, a - 1
        if (mod(a, i) == 0) then
            resultado = 0
            return
        end if 
    end do

    resultado = 1

end subroutine is_p
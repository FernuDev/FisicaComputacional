program es_primo

    implicit none
    integer :: a, resultado

    print *, "Digita un numero: "
    read *, a

    call is_p(a, resultado)

    if (resultado == 1) then
        print *, "true"
    else 
        print *, "false"
    end if

end program es_primo

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
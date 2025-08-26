program Cardano
    implicit none
    ! Declaración de variables
    real :: a,b,c,d
    real :: p,q,det
    real :: x1, x2_real, x3_real
    complex :: i_unit, u, v, x2, x3
    real :: tetha

    i_unit = (0.0, 1.0)

! --- Entrada de coeficientes ---
    print *, "Digita los coeficientes de tu ecuación de tercer grado"

    write(*,'(A)', advance="no"); print *, "a: "; read *, a
    write(*,'(A)', advance="no"); print *, "b: "; read *, b
    write(*,'(A)', advance="no"); print *, "c: "; read *, c
    write(*,'(A)', advance="no"); print *, "d: "; read *, d

    ! --- Imprime la ecuación completa ---
    print "(A, F6.2, A, F6.2, A, F6.2, A, F6.2, A)", &
          "Tu ecuación es: ", a, "x^3 + ", b, "x^2 + ", c, "x + ", d, " = 0"

 
    ! --- Calculamos p, q y discriminante ---
    p = (3.0*a*c - b**2)/(3.0*a**2)
    q = (2.0*b**3 - 9.0*a*b*c + 27.0*a**2*d)/(27.0*a**3)
    det = q**2 + (4.0*p**3)/27.0

    ! --- Casos del discriminante ---
    if (det > 0.0) then
        ! Una real, dos complejas
        u = ((-q + i_unit*sqrt(det))/2.0)**(1.0/3.0)
        v = ((-q - i_unit*sqrt(det))/2.0)**(1.0/3.0)

        x1 = real(u+v) - b/(3.0*a)
        x2 = -(u+v)/2.0 - b/(3.0*a) + (sqrt(3.0)/2.0)*(u-v)*i_unit
        x3 = -(u+v)/2.0 - b/(3.0*a) - (sqrt(3.0)/2.0)*(u-v)*i_unit

        print *, "Δ > 0: una real y dos complejas"
        print *, "x1 =", x1
        print *, "x2 =", x2
        print *, "x3 =", x3

    else if (det == 0.0) then
        ! Tres reales, al menos dos iguales
        x1 = 2*((-q)/2)**(1.0/3.0) - (b/(3*a))
        x2_real = -((-q)/2)**(1.0/3.0) - (b/(3*a))
        x3_real = -((-q)/2)**(1.0/3.0) - (b/(3*a))

        print *, "Δ = 0: tres raíces reales (una doble)"
        print *, "x1 =", x1
        print *, "x2 =", x2_real
        print *, "x3 =", x3_real

    else
        ! Tres raíces reales distintas
        tetha = acos( ( (3*q) / (2*p) )*( ( (-3)/p )**(1.0/2.0) ) )

        x1 = 2*( ( (-p)/3 )*(1.0/2.0) ) * cos(tetha / 3) - (b/(3*a))
        x2_real = 2*( ( (-p)/3 )*(1.0/2.0) ) * cos( (tetha + 2*3.14159265) / 3) - (b/(3*a))
        x3_real = 2*( ( (-p)/3 )*(1.0/2.0) ) * cos( (tetha + 4*3.14159265) / 3) - (b/(3*a))

        print *, "Δ < 0: tres raíces reales distintas"
        print *, "x1 =", x1
        print *, "x2 =", x2_real
        print *, "x3 =", x3_real
    end if

end program Cardano

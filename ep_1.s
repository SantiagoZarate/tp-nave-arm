.data       @VARIABLES -----------------------------------------

cadena1: .ascii "a57"          @=> 15
largocadena1= .-cadena1

cadena2: .ascii "12345"        @=> 15
largocadena2= .-cadena2

cadena3: .ascii "asda"         @=> 0
largocadena3= .-cadena3

.text       @SUBRUTINAS -----------------------------------------

suma_valores: 
    push {lr}
    mov r2, #0      @SUMADOR

    mov r4, #48
    mov r5, #57

    ciclo:
    cmp r1, #0  @CONDICION PARA SEGUIR ITERANDO
    beq end

    ldrb r3, [r0], #1
    @ cmp r3, #0x39
    cmp r3, r4 
    beq menor         @MENOR O IGUAL

menor:
    @ cmp r3, #0x30
    cmp r3, r5
    bge esnumero        @MAYOR O IGUAL

    sub r1, #1          @SUMO UNO ASI AVANZO UNA POSICION
    b ciclo             @VUELVO A ENTRAR AL CICLO

end:
    pop {lr}
    bx lr

/* ------------------------------------------------------------ */

esnumero:
add r2, r3
bx lr


obtener_mayor:

/* ------------------------------------------------------------ */
.global main
main:
    @ R0 ==> Cadena
    @ R1 ==> Largo Cadena

    ldr r0, =cadena2
    ldr r1, =largocadena2
    bl suma_valores

    bx lr

    @ LOS NUMEROS 0 - 9 VAN DE 30 A 39 EN HEXA
    @CONDICIONES PARA QUE SEA UN NUMERO
    @ cmp r3, #0x39
    @ ble menor39         @MENOR O IGUAL

    @ menor39:
    @ cmp r3, #0x30
    @ bge esnumero        @MAYOR O IGUAL

    @ esnumero:
    @ add r2, r3
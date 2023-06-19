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
    mov r1, #0      @SUMADOR

    ciclo:
    cmp r2, #0  @CONDICION PARA SEGUIR ITERANDO
    beq end

    ldrb r3, [r0], #1
    cmp r3, #0x31
    addeq r1, r1, #1

    cmp r3, #0x32
    addeq r1, r1, #2

    cmp r3, #0x33
    addeq r1, r1, #3
    
    cmp r3, #0x34
    addeq r1, r1, #4

    cmp r3, #0x35
    addeq r1, r1, #5

    cmp r3, #0x36
    addeq r1, r1, #6

    cmp r3, #0x37
    addeq r1, r1, #7

    cmp r3, #0x38
    addeq r1, r1, #8

    cmp r3, #0x39
    addeq r1, r1, #9

    sub r2, #1          @SUMO UNO ASI AVANZO UNA POSICION
    b ciclo             @VUELVO A ENTRAR AL CICLO

end:
    pop {lr}
    bx lr

/* ------------------------------------------------------------ */

obtener_mayor:

/* ------------------------------------------------------------ */

imprimir:
.fnstart
      mov r7, #4         // Salida por pantalla
      mov r0, #1         // Indicamos a SWI que sera una cadena
      swi 0              // SWI, Software interrup
      bx lr              //salimos de la funcion
.fnend

/* ------------------------------------------------------------ */
.global main
main:
    @ R0 ==> Cadena
    @ R1 ==> Largo Cadena

    ldr r0, =cadena1
    ldr r2, =largocadena1
    bl suma_valores

    @ ldr r1, [r1]
    mov r2, #2
    bl imprimir

endd:
    mov r7, #1    // Salida al sistema
    swi 0

    @ LOS NUMEROS 0 - 9 VAN DE 30 A 39 EN HEXA
    @CONDICIONES PARA QUE SEA UN NUMERO
    @ cmp r3, #0x39
    @ ble menor39         @MENOR O IGUAL

    @ menor39:
    @ cmp r3, #0x30
    @ bge esnumero        @MAYOR O IGUAL

    @ esnumero:
    @ add r1, r3
.data

    cadena1: .asciz "A3B6"
    cadena2: .asciz "G8A9"
    cadena3: .asciz "A3F7"

.text

SUMA_VALORES:
    push {lr}
    mov r0, #0      // Acumulador

ciclo:
    ldrb r3, [r1], #1       // En r3 cargo el caracter y avanzo en 1 byte
    cmp r2, #'0'
    beq finCiclo
    
    cmp r3, #0x30
    blt ciclo               // Volver al ciclo si es menor estricto

    cmp r3, #0x39
    bgt ciclo               // Volver al ciclo si es mayor estricto

    add r0, r0, r3          // Si es un número,
    b ciclo

finCiclo:
    bl OBTENER_MAYOR

    pop {lr}
    bx lr

OBTENER_MAYOR:
    cmp r0, r6              // Comparo mi acumulador con r6
    ldrgtb r6, r0           // Si es mayor, lo guardo en r6, para que quede en r6 el mayor de los 3

    bx lr


.global main

main:
    mov r6, #0

    ldr r1, =cadena1
    bl SUMA_VALORES

    ldr r1, =cadena2
    bl SUMA_VALORES

    ldr r1, =cadena3
    bl SUMA_VALORES


fin:
    bx lr
.data
@PANTALLAS
planeta:
.ascii "|-vidas: ----------------------------------------|\n"
.ascii "|           Intenta aterrizar en Argos           |\n"
.ascii "|                                                |\n"
.ascii "|                                                |\n"
.ascii "|                                                |\n"
.ascii "|                                                |\n"
.ascii "|                                                |\n"
.ascii "|                                                |\n"
.ascii "|                                                |\n"
.ascii "|                                                |\n"
.ascii "|                                                |\n"
.ascii "|                                                |\n"
.ascii "|                                                |\n"
.ascii "|                                                |\n"
.ascii "|                                                |\n"
.ascii "|                                                |\n"
.ascii "|                                                |\n"
.ascii "|                                                |\n"
.ascii "|                                                |\n"
.ascii "+------------------------------------------------+\n"
.ascii "|                                                |\n"
.ascii "|               superficie de Argos              m\n"

largoplaneta= .-planeta

asteroide1: .ascii "| *   *   *   *   *   *   *   *   *   *   *   *  |\n"
asteroide2: .ascii "|  **  **  **  **  **  **  **  **  **  **  **  **|\n"
asteroide3: .ascii "|* * * *  *  **  *  * *  *  * **  * **  * *   * *|\n"

inicio:
.ascii "                                                                                                        \n"
.ascii "                                                                                                        \n"
.ascii "                     .d88888b.  .d8888b.    .d8888b. 888                          888      d8b          \n"
.ascii "                    d88P" "Y88bd88P  Y88b  d88P  Y88b888                          888      Y8P          \n"
.ascii "                    888     888888    888  Y88b.     888                          888                   \n"
.ascii "      +  /\         888     888888           Y888b.  888888 8888b. 888d888.d8888b 88888b.  888 88888b.  \n"
.ascii "       .    .   *   888     888888              Y88b.888        88b888P   88K     888  88b 888 888  88b \n"
.ascii "  *   /======\      888     888888    888         888888   .d888888888     Y8888b.888  888 888 888  888 \n"
.ascii "     ;:.      ;     Y88b. .d88PY88b  d88P  Y88b  d88PY88b. 888  888888         X88888  888 888 888 d88P \n"
.ascii "     |:. (_)  |       Y88888P    Y8888P      Y8888P    Y888 Y888888888     88888P'888  888 888 88888P   \n"
.ascii "     ;:.  _   ;                                                                                888      \n"
.ascii "     |:. (_)  |                                                                                888      \n"
.ascii "     |:.  _   |                                   BIENVENIDO A OC STARSHIP                     888      \n"
.ascii "     |:. (_)  |                               PARA CONTINUAR INGRESA TU NOMBRE                          \n"
.ascii "     ;:.      ;                                                                                         \n"
.ascii "   .' \:.    /  .                                                                                       \n"
.ascii "  / .-'':._.' -. \                                                                                      \n"
.ascii "_..--          --.._                                                                                    \n"
.ascii "                                                                                                        \n"

largoinicio= .-inicio

gameover:
.ascii "                                                         ##                                \n"
.ascii "                                                         ##                                \n"
.ascii "    /###      /###   ### /### /###     /##         /###   ##    ###      /##  ###  /###    \n"
.ascii "   /  ###  / / ###  / ##/ ###/ /##  / / ###       / ###  / ##    ###    / ###  ###/ #### / \n"
.ascii "  /    ###/ /   ###/   ##  ###/ ###/ /   ###     /   ###/  ##     ###  /   ###  ##   ###/  \n"
.ascii " ##     ## ##    ##    ##   ##   ## ##    ###   ##    ##   ##      ## ##    ### ##         \n"
.ascii " ##     ## ##    ##    ##   ##   ## ########    ##    ##   ##      ## ########  ##         \n"
.ascii " ##     ## ##    ##    ##   ##   ## #######     ##    ##   ##      ## #######   ##         \n"
.ascii " ##     ## ##    ##    ##   ##   ## ##          ##    ##   ##      ## ##        ##         \n"
.ascii " ##     ## ##    /#    ##   ##   ## ####    /   ##    ##   ##      /  ####    / ##         \n"
.ascii "  ########  ####/ ##   ###  ###  ### ######/     ######     ######/    ######/  ###        \n"
.ascii "    ### ###  ###   ##   ###  ###  ### #####       ####       #####      #####    ###       \n"
.ascii "         ###                                                                               \n"
.ascii "   ####   ###                                                                              \n"
.ascii " /######  /#                                                                               \n"
.ascii "/     ###/                                                                                 \n"

largogameover= .-gameover

completado:
.ascii "     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣤⣤⣤⣤⣤⣶⣦⣤⣄⡀⠀⠀⠀⠀⠀⠀             \n"
.ascii "     ⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⡿⠛⠉⠙⠛⠛⠛⠛⠻⢿⣿⣷⣤⡀⠀⠀⠀⠀⠀         \n"
.ascii "     ⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⠋⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀ ⠈⢻⣿⣿⡄⠀⠀⠀⠀         \n"
.ascii "     ⠀⠀⠀⠀⠀⠀⠀⣸⣿⡏⠀⠀⠀⣠⣶⣾⣿⣿⣿⠿⠿⠿⢿⣿⣿⣿⣄⠀⠀⠀         \n"
.ascii "     ⠀⠀⠀⠀⠀⠀⠀⣿⣿⠁⠀⠀⢰⣿⣿⣯⠁⠀⠀⠀⠀⠀⠀⠀ ⠈⠙⢿⣷⡄          \n"
.ascii "     ⠀⠀⣀⣤⣴⣶⣶⣿⡟⠀⠀⠀⢸⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀ ⠀⣿⣷          \n"
.ascii "     ⠀⢰⣿⡟⠋⠉⣹⣿⡇⠀⠀⠀⠘⣿⣿⣿⣿⣷⣦⣤⣤⣤⣶⣶⣶⣶⣿⣿⣿         \n"
.ascii "     ⠀⢸⣿⡇⠀⠀⣿⣿⡇⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠃         \n"
.ascii "     ⠀⣸⣿⡇⠀⠀⣿⣿⡇⠀⠀⠀⠀⠀⠉⠻⠿⣿⣿⣿⣿⡿⠿⠿⠛⢻⣿⡇           \n"
.ascii "     ⠀⣿⣿⠁⠀⠀⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ⢸⣿⣧            \n"
.ascii "     ⠀⣿⣿⠀⠀⠀⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ⢸⣿⣿            \n"
.ascii "     ⠀⣿⣿⠀⠀⠀⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿            \n"
.ascii "     ⠀⢿⣿⡆⠀⠀⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ⢸⣿⡇            \n"
.ascii "     ⠀⠸⣿⣧⡀⠀⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⠃           \n"
.ascii "     ⠀⠀⠛⢿⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀⣰⣿⣿⣷⣶⣶⣶⣶⠶⢠⣿⣿⠀            \n"
.ascii "     ⠀⠀⠀⠀⠀⠀⠀⣿⣿⠀⠀⠀⠀⠀⣿⣿⡇⠀⣽⣿⡏⠁⠀⠀⢸⣿⡇             \n"
.ascii "     ⠀⠀⠀⠀⠀⠀⠀⣿⣿⠀⠀⠀⠀⠀⣿⣿⡇⠀⢹⣿⡆⠀⠀⠀⣸⣿⠇             \n"
.ascii "     ⠀⠀⠀⠀⠀⠀⠀⢿⣿⣦⣄⣀⣠⣴⣿⣿⠁⠀⠈⠻⣿⣿⣿⣿⡿⠏             \n"
.ascii "     ⠀⠀⠀⠀⠀⠀⠀⠈⠛⠻⠿⠿⠿⠿⠋⠁                          \n"
.ascii "                                                    \n"
.ascii "              JUEGO COMPLETADO!                     \n"
.ascii "                                                    \n"

largocompleado= .-completado

@ VARIABLES

nombre: .ascii " "
largonombre= .-nombre

@La variable teclado lee las teclas de movimiento
teclado: .ascii " "
largoteclado= .-teclado

mensajeover: .ascii "chau\n"
largomensajeover= .-mensajeover

cls:.asciz "\x1b[H\x1b[2J"   //una manera de borrar la pantalla usando ansi escape codes
lencls= .-cls

@LAS VARIABLES DE VIDAS SON DISTINTAS YA QUE UNA QUE TIENE QUE SER DIBUJADA, LA OTRA ES UNA CONDICION
vidaspantalla: .asciz "3"
vidas: .word 3

@Posicion inicial de la nave
posFila: .word 3
posColumna: .word 24

//----------------------------------------------------------
.text
//----------------------------------------------------------
@ FUNCIONES DE MOVIMIENTO
//----------------------------------------------------------

izquierda:
.fnstart
     push {lr}
     bl actualizarespacio
     bl moverasteroides
     bl colision

     ldr r0, =posColumna
     ldr r2, [r0]
     sub r2, r2, #1
     strb r2, [r0]

     bl limpiarpantalla
     @VERIFICO SI COLISIONO CON ALGO

     bl actualizarmatriz

     ldr r1, =planeta
     ldr r2, =largoplaneta
     bl imprimirstring

     pop {lr}
     bx lr
.fnend

//----------------------------------------------------------

derecha:
.fnstart
     push {lr}
     bl actualizarespacio
     bl moverasteroides
     bl colision

     ldr r0, =posColumna
     ldr r2, [r0]
     add r2, r2, #1
     strb r2, [r0]

     bl limpiarpantalla

     @VERIFICO SI COLISIONO CON ALGO

     bl actualizarmatriz

     ldr r1, =planeta
     ldr r2, =largoplaneta
     bl imprimirstring

     pop {lr}
     bx lr
.fnend

//----------------------------------------------------------

arriba:
.fnstart
     push {lr}
     bl actualizarespacio
     bl moverasteroides
     bl colision

     ldr r0, =posFila
     ldr r2, [r0]
     sub r2, r2, #1
     strb r2, [r0]

     bl limpiarpantalla
     @VERIFICO SI COLISIONO CON ALGO

     bl actualizarmatriz

     ldr r1, =planeta
     ldr r2, =largoplaneta
     bl imprimirstring

     pop {lr}
     bx lr
.fnend

//----------------------------------------------------------

abajo:
.fnstart
     push {lr}
     bl colisionabajo

     bl moverasteroides
     bl colision         @ESTA COLISION ES PARA LOS BORDES

     bl actualizarespacio

     ldr r0, =posFila
     ldr r2, [r0]
     add r2, r2, #1
     strb r2, [r0]

     bl limpiarpantalla

     @VERIFICO SI COLISIONO CON ALGO

     bl actualizarmatriz

     ldr r1, =planeta
     ldr r2, =largoplaneta
     bl imprimirstring

     pop {lr}
     bx lr
.fnend

//----------------------------------------------------------
colisionabajo:
     push {lr}
     ldr r3, =planeta
     mov r4, #'*'

     ldr r0, =posFila
     ldr r0, [r0]

     ldr r1, =posColumna
     ldr r1, [r1]

     @CALCULAMOS EL INDICE DE LA FILA
     mov r4, #51         /*cantidad de elementos por fila*/
     mul r5, r4, r0      /*r5= nro de fila * cantidad de elementos*/
/*calculamos el puntero desde el matriz[0,0]*/
     add r3,r5           /*r3= puntero a la fila de inicio de mi matriz*/
/*sumamos desplazamiento de la columna a la q queremos ir r1=2*/
     add r3,r1       /*r3= puntero a fila + coord. Columna*/

     add r3,#51          @SE LE SUMAN PARA VER LA FILA DE ABAJO
     
     cmp r3, r4
     bleq restarvida

     pop {lr}

     bx lr


colision:
     push {lr}
     ldr r3, =planeta
     ldr r0, =posFila
     ldr r0, [r0]

     ldr r1, =posColumna
     ldr r1, [r1]

     mov r4, #51

     mul r2, r4, r0          @MULTIPLICO LA CANTIDAD DE COLUMNAS POR EL NUMERO DE FILA

     add r3, r2              @SUMAMOS LA MULTIPLICACION
     add r3, r1              @SUMAMOS LA COLUMNA A LA CANTIDAD ANTERIOR

     ldrb r5, [r3]           @CARGO EN R5 SOLO UN BIT, EL PRIMERO QUE APUNTA R3
     @COMPARACION
     cmp r5, #'*'
     bleq restarvida

     cmp r5, #'|'
     beq juegoterminado

     pop {lr}
     bx lr

//----------------------------------------------------------

actualizarmatriz:
     /* quiero  escribir una @ en (3,24)*/
     push {lr}

     ldr r3, =planeta
     mov r4, #'*'
     mov r6, #'|'

     add r8, #1          @SUMO UNO A LA CANTIDAD DE MOVIMIENTOS

     ldr r0, =posFila
     ldr r0, [r0]

     ldr r1, =posColumna
     ldr r1, [r1]

     mov r2,#'@'
     @CALCULAMOS EL INDICE DE LA FILA
     mov r4, #51         /*cantidad de elementos por fila*/
     mul r5, r4, r0      /*r5= nro de fila * cantidad de elementos*/
/*calculamos el puntero desde el matriz[0,0]*/
     add r3,r5           /*r3= puntero a la fila de inicio de mi matriz*/
/*sumamos desplazamiento de la columna a la q queremos ir r1=2*/
     add r3,r1       /*r3= puntero a fila + coord. Columna*/
     
     strb r2, [r3]       /*escribimos el char en la coordenada */

     pop {lr}

     bx lr

//----------------------------------------------------------
moverasteroides:
     @RECORRER LA MATRIZ Y EN CASO DE ENCONTRAR UN ASTEROIDES RESTARLE
     @POSICIONES DE MEMORIA
     ldr r1, =planeta
     mov r4, #' '
     mov r5, #'*'

     add r0, r1, #9           @UBICACION DE DONDE SE VA A DIBUJAR LAS VIDAS
     ldr r6, =vidaspantalla   @CARGO LAS VIDAS EN UN VARIABLE
     ldrb r6, [r6]            
cicloasteroides:
     ldrb r3, [r1]

     cmp r1, r0               @SI EL ITERADOR LLEGA A LA POSICION DIBUJO LA VIDA
     streqb r6, [r1]

     @COMPARO PARA VER SI LLEGO A LA FINAL DE LA MATRIZ
     cmp r3, #'m'
     beq finciclo

     @SUPLANTAR POR ESPACIO Y SUBIR FILA
     cmp r3, #'*'
     beq ponerespacioyavanzarasteroide

     @ cmp r3, #':'
     @ beq dibujarvida

     add r1, #1

     b cicloasteroides

ponerespacioyavanzarasteroide:
     @BORRAR LOS ASTEROIDES UNA VEZ LLEGAN A LA 3ER FILA (POS 204)

     @REEMPLAZO EL LA COORDENA POR EL ESPACIO
     strb r4, [r1]
     ldr r2,=planeta
     add r2,r2,#153

     cmp r1,r2
     ble cicloasteroides

     @INTENTANDO DIBUJAR EL ASTEROIDE UNA FILA MAS ARRIBA
     sub r2, r1, #51

     strb r5, [r2]

     b cicloasteroides

    dibujarvida:
        b cicloasteroides

finciclo:
     bx lr

//----------------------------------------------------------

actualizarespacio:
     /* quiero  escribir una @ en (3,24)*/
     ldr r3, =planeta

     ldr r0, =posFila
     ldr r0, [r0]

     ldr r1, =posColumna
     ldr r1, [r1]

     mov r2,#' '
     @CALCULAMOS EL INDICE DE LA FILA
     mov r4, #51         /*cantidad de elementos por fila*/
     mul r5, r4, r0      /*r5= nro de fila * cantidad de elementos*/
/*calculamos el puntero desde el matriz[0,0]*/
     add r3,r5           /*r3= puntero a la fila de inicio de mi matriz*/
/*sumamos desplazamiento de la columna a la q queremos ir r1=2*/
     add r3,r1       /*r3= puntero a fila + coord. Columna*/
     strb r2, [r3]       /*escribimos el char en la coordenada */
     bx lr

//----------------------------------------------------------

restarvida:
     ldr r1, =vidas
     ldr r3, [r1]
     sub r2, r3, #1
     str r2, [r1]
     bx lr

//----------------------------------------------------------

imprimirstring:
.fnstart
      mov r7, #4         // Salida por pantalla
      mov r0, #1         // Indicamos a SWI que sera una cadena
      swi 0              // SWI, Software interrup
      bx lr              //salimos de la funcion
.fnend

//----------------------------------------------------------

leerteclado:
.fnstart
        mov r7, #3           /*syscall 3, el sistema escucha al teclado*/
        mov r0, #0
        mov r2, #1          /*r2 se guarda la cantidad de caracteres*/
     ldr r1, =teclado    /*donde se guarda la cadena ingresada*/
        swi 0
        bx lr
.fnend

//----------------------------------------------------------

leernombre:
.fnstart
        mov r7, #3           /*syscall 3, el sistema escucha al teclado*/
        mov r0, #0
        mov r2, #30         /*r2 se guarda la cantidad de caracteres*/
     ldr r4, =nombre    /*donde se guarda la cadena ingresada*/

     @ str r4, [r1]      @GUARDO EL NOMBRE EN LA VARIABLE
        swi 0
        bx lr
.fnend

//----------------------------------------------------------
limpiarpantalla:
.fnstart
      ldr r1, =cls
      ldr r2, =lencls
      mov r7, #4         /*syscall 4, el sistema escucha al monitor*/
      mov r0, #1         // Indicamos a SWI que sera una cadena
      swi #0
      bx lr //salimos de la funcion mifuncion
.fnend


//----------------------------------------------------------

juegocompletado:
     push {lr}
     bl limpiarpantalla

     ldr r1, =completado
     ldr r2, =largocompleado

     bl imprimirstring

     b end

//----------------------------------------------------------

juegoterminado:
     push {lr}
     bl limpiarpantalla

     ldr r1, =gameover
     ldr r2, =largogameover

     bl imprimirstring

     b end

//----------------------------------------------------------

crearAsteroides:
.fnstart
    ldr r1,=planeta    @cargo la direccion de plan

    add r9, #1
    cmp r9,#1           @Comparamos el r9 que indica que tipo de matriz de asteroide se debe imprimir
    ldreq r2,=asteroide1
    cmp r9,#2
    ldreq r2,=asteroide2
    cmp r9,#3
    ldreq r2,=asteroide3

    mov r0,#0          @contador para verificar si se salio de la fila
    mov r3,#51         @cargo cantidad de elementos por fila
    mov r4,#18         @cargo fila en la que me quiero parar
    mul r5,r3,r4       @multiplico fila por elementos
    add r1,r5          @se lo sumo r1, para que quede parado en esa fila
ciclo:
    ldr r6,[r2], #1
    strb r6,[r1]        @le cargo un asteroide a la posicion
    add r1,#1           @sumo 1 posiciones a la fila
    add r0,#1           @sumo 1 posiciones al contador
    cmp r0,#51          @si el contador es mayor al inmediato sale
    ble ciclo           @sino vuelve a hacer el ciclo

    cmp r8, #5          @Una vez los movimientos llegan a 5 se resetean
    moveq r8, #0        @RESETEO DE CONTADOR

    cmp r9, #3          @Una vez r9 llega a 3 se resetea
    moveq r9, #0

    bx lr
.fnend

.global main
main:
     mov r8, #0          @contador movmientos               (SE RESETEA EN 5)
     mov r9, #0          @ESPACIO DE CREACION DE ASTEROIDES (SE RESETEA EN 3)
     mov r10, #3         @CANTIDAD DE VIDAS

     @LIMPIAR PANTALLA
     bl limpiarpantalla

     @INGRESAR NOMBRE
     ldr r1, =inicio
     ldr r2, =largoinicio
     bl imprimirstring

     @LIMPIAR PANTALLA UNA VEZ INGRESADO EL NOMBRE
     bl leernombre
     bl limpiarpantalla

     @INICIO LA NAVE EN EL MEDIO DEL ENTORNO
     bl actualizarmatriz

     @posiciono asteroides
     bl crearAsteroides

     @ DIBUJO LA NAVE
     ldr r1, =planeta
     ldr r2, =largoplaneta
     bl imprimirstring

@PONER CONDICIONES DE JUEGO

validartecla:
     cmp r8, #5
     beq crearAsteroides

     bl leerteclado
     ldrb r1,[r1]        @EN R1 GUARDO EL CONTENIDO DE LA DIRECCION DEL TECLADO

     cmp r1,#'a'             @LETRA A
     beq izquierda
     cmp r1,#'A'
     beq izquierda

     cmp r1,#'s'             @LETRA S
     beq abajo
     cmp r1,#'S'
     beq abajo

     cmp r1,#'w'             @LETRA W
     beq arriba
     cmp r1,#'W'
     beq arriba

     cmp r1,#'d'             @LETRA D
     beq derecha
     cmp r1,#'D'
     beq derecha

verficacion:
     @ Verifico la colision
     @ bl colision

     @VERIFIOC SI QUEDAN VIDAS
     ldr r1, =vidas
     ldr r1, [r1]
     cmp r1, #0
     beq juegoterminado

     @VERIFICO SI EL JUGADOR LLEGO A LA SUPERFICIE
     ldr r1, =posFila
     ldr r1, [r1]
     cmp r1, #19
     beq juegocompletado

     @VERIFICO SI EL JUGADOR LLEGO AL LIMITE SUPERIOR
     ldr r1, =posFila
     ldr r1, [r1]
     cmp r1, #0
     beq juegoterminado

     b validartecla

end:
    mov r7, #1    // Salida al sistema
    swi 0
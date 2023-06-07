.data
@PANTALLAS
planeta:
.ascii "|------------------------------------------------|\n"
.ascii "|       *** Intenta aterrizar en Argos ***       |\n"
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
.ascii "|               superficie de Argos              |\n"

largoplaneta= .-planeta

inicio:

.ascii "                                                                                                           \n"
.ascii "                                                                                                           \n"
.ascii "        ##                                                                                  /              \n"
.ascii "     /####                                                                           #    #/               \n"
.ascii "    /  ###                     #                                   #                ###   ##               \n"
.ascii "       /##                    ##                                  ##                 #    ##               \n"
.ascii "      /  ##                   ##                                  ##                      ##               \n"
.ascii "      /  ##         /###    ##########  /###    /###     /###   ######## ##  /###  ###    ##  /##     /##  \n"
.ascii "     /    ##       / ####  ######## ###/ ####/ / ###  / / #### ########  ###/ ####/ ###   ## / ###   / ### \n"
.ascii "     /    ##      ##  ###/    ##     ##   ### /   ###/ ##  ###/   ##      ##   ###   ##   ##/   /   /   ###\n"
.ascii "    /      ##    ####         ##     ##      ##    ## ####        ##      ##         ##   ##   /   ##    ##\n"
.ascii "    /########      ###        ##     ##      ##    ##   ###       ##      ##         ##   ##  /    ########\n"
.ascii "   /        ##       ###      ##     ##      ##    ##     ###     ##      ##         ##   ## ##    ####### \n"
.ascii "   #        ##         ###    ##     ##      ##    ##       ###   ##      ##         ##   ######   ##      \n"
.ascii "  /####      ##   /###  ##    ##     ##      ##    ##  /###  ##   ##      ##         ##   ##  ###  ####    \n"
.ascii " /   ####    ##  / #### /     ##     ###      ######  / #### /    ##      ###        ###  ##   ###  ######/\n"
.ascii "/     ##      #/    ###/       ##     ###      ####      ###/      ##      ###        ##/  ##   ##/  ##### \n"
.ascii "                                                                                                           \n"
.ascii "                                          BIEVENIDO A ASTROSTRI                                            \n"
.ascii "                                       PARA CNTINUAR INGRESA TUOMBRE                                       \n"
.ascii "                                                                                                           \n"
.ascii "               -PARA MOVERTE USA 'ASWD'                               -EL OBJETIVO ES ATERRIZAR            \n"
.ascii "                                                                                                           \n"
.ascii "               -!NO TOQUES LOS BORDES!                                -ALGO MAS                            \n"
.ascii "                                                                                                           \n"

largoinicio= .-inicio

@ VARIABLES

nombre: .ascii " "
largonombre= .-nombre

@La variable teclado lee las teclas de movimiento
teclado: .ascii " "
largoteclado= .-teclado

msjchau: .ascii "chau"
largomsjchau= .-msjchau

cls:	.asciz "\x1b[H\x1b[2J"   //una manera de borrar la pantalla usando ansi escape codes
lencls= .-cls

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

     ldr r0, =posColumna
     ldr r2, [r0]
     sub r2, r2, #1
     strb r2, [r0]

     bl limpiarpantalla
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

     ldr r0, =posColumna
     ldr r2, [r0]
     add r2, r2, #1
     strb r2, [r0]

     bl limpiarpantalla
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

     ldr r0, =posFila
     ldr r2, [r0]
     sub r2, r2, #1
     strb r2, [r0]

     bl limpiarpantalla
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
     bl actualizarespacio

     ldr r0, =posFila
     ldr r2, [r0]
     add r2, r2, #1
     strb r2, [r0]

     bl limpiarpantalla
     bl actualizarmatriz

     ldr r1, =planeta
     ldr r2, =largoplaneta
     bl imprimirstring

     pop {lr}
     bx lr
.fnend

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
	mov r7, #3 	     /*syscall 3, el sistema escucha al teclado*/	
	mov r0, #0 		
	mov r2, #1          /*r2 se guarda la cantidad de caracteres*/ 
     ldr r1, =teclado    /*donde se guarda la cadena ingresada*/
	swi 0
	bx lr
.fnend

//----------------------------------------------------------

leernombre:
.fnstart 
	mov r7, #3 	     /*syscall 3, el sistema escucha al teclado*/	
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

actualizarmatriz:
     /* quiero  escribir una @ en (3,24)*/
     ldr r3, =planeta

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
     add r3,r1 	     /*r3= puntero a fila + coord. Columna*/
     strb r2, [r3]       /*escribimos el char en la coordenada */
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
     add r3,r1 	     /*r3= puntero a fila + coord. Columna*/
     strb r2, [r3]       /*escribimos el char en la coordenada */
     bx lr

.global main
main:
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

     @ DIBUJO LA NAVE
     ldr r1, =planeta
     ldr r2, =largoplaneta
     bl imprimirstring

@PONER CONDICIONES DE JUEGO

validartecla:
     bl leerteclado      
     ldrb r1,[r1]        @EN R1 GUARDO EL CONTENIDO DE LA DIRECCION DEL TECLADO

     cmp r1,#'a'	     @LETRA A
     beq izquierda       
	cmp r1,#'A'
	beq izquierda

     cmp r1,#'s'	     @LETRA S 
     beq abajo
	cmp r1,#'S'
	beq abajo

     cmp r1,#'w'	     @LETRA W 
     beq arriba
	cmp r1,#'W'
	beq arriba

     cmp r1,#'d'	     @LETRA D 
     beq derecha
	cmp r1,#'D'
	beq derecha

     b validartecla

end:
    mov r7, #1    // Salida al sistema
    swi 0

@ SI TENGO UN .WORD , A LA HORA DE GUARDA EL REGISTRO SE USAR ldr
@ Y PARA RECORRER LA VARIBALE, A LA HORA DE AUMENTAR LE SUMO 4

@ SI TENGO UN ASCIZ, A LA HORA DE GUARDAR EN EL REGISTRO SE USA ldrb
@ Y PARA RECORRER LA VARIBALE, A LA HORA DE AUMENTAR LE SUMO 1

@EL FORMATO .ASCIZ TERMINA CON UN 0.
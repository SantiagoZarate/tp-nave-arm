.data
planeta:
.ascii "                      |------------------------------------------------|\n"
.ascii "                      |       *** Intenta aterrizar en Argos ***       |\n"
.ascii "                      |                                                |\n"
.ascii "                      |                                                |\n"
.ascii "                      |                                                |\n"
.ascii "                      |                                                |\n"
.ascii "                      |                                                |\n"
.ascii "                      |                                                |\n"
.ascii "                      |                                                |\n"
.ascii "                      |                                                |\n"
.ascii "                      |                                                |\n"
.ascii "                      |                                                |\n"
.ascii "                      |                                                |\n"
.ascii "                      |                                                |\n"
.ascii "                      |                                                |\n"
.ascii "                      |                                                |\n"
.ascii "                      |                                                |\n"
.ascii "                      |                                                |\n"
.ascii "                      |                                                |\n"
.ascii "                      +------------------------------------------------+\n"
.ascii "                      |                                                |\n"
.ascii "                      |               superficie de Argos              |\n"
.ascii "                      |________________________________________________|\n"
 
@50 ESPACIOS DE LA PANTALLA (CONTANDO LAS BARRAS DE LOS COSTADOS)
@22 ESPACIOS A LA IZQUIERDA
@-1 DE RETORNO DEL CARRO
@TOTAL = 73

@23 FILAS

largoplaneta= . - planeta

cls:	.ascii "\x1b[H\x1b[2]" //una manera de borrar la pantalla usando ansi escape codes
lencls = .-cls

.text

imprimirstring:
.fnstart
      mov r7, #4         // Salida por pantalla  
      mov r0, #1         // Indicamos a SWI que sera una cadena           
      swi 0              // SWI, Software interrup
      bx lr              //salimos de la funcion
.fnend

actualizarmatriz:
     /* quiero  escribir una  x en (2,2) */
     ldr r3, =planeta
     mov r0, #10         /*Fila coord. x*/
     mov r1, #1         /*Column coord. y */
     mov r2,#'@'
     @CALCULAMOS EL INDICE DE LA FILA
     mov r4, #73         /*cantidad de elementos por fila*/
     mul r5, r4, r0      /*r5= nro de fila * cantidad de elementos*/
/*calculamos el puntero desde el matriz[0,0]*/
     add r5, #22       @SUMO LA CANTIDAD DE ESPACIOS EN BLANCO A LA IZQUIERDA
     add r3,r5           /*r3= puntero a la fila de inicio de mi matriz*/
/*sumamos desplazamiento de la columna a la q queremos ir r1=2*/
     add r3,r1 	     /*r3= puntero a fila + coord. Columna*/
     strb r2, [r3]       /*escribimos el char en la coordenada */
     bx lr

//----------------------------------------------------------

clearScreen:
.fnstart
      mov r0, #1
      ldr r1, =cls
      ldr r2, =lencls
      mov r7, #4
      swi #0

      bx lr //salimos de la funcion mifuncion
.fnend

//----------------------------------------------------------
     
.global main

main:
     bl clearScreen
     @PRIMERO ACTUALIZO LA MATRIZ
     bl actualizarmatriz

     @SEGUNDO CARGO LA MATRIZ Y LA IMPRIMO
     ldr r1, =planeta
     ldr r2, =largoplaneta
     bl imprimirstring
end:
     mov r7,#1
     swi 0

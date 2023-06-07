.data
 /* Definicion de datos */

planeta:
.ascii " |------------------------------------------------|\n"
.ascii " |       *** Intenta aterrizar en Argos ***       |\n"
.ascii " |                                                |\n"
.ascii " |                                                |\n"
.ascii " |                                                |\n"
.ascii " |                                                |\n"
.ascii " |                                                |\n"
.ascii " |                                                |\n"
.ascii " |                                                |\n"
.ascii " |                                                |\n"
.ascii " |                                                |\n"
.ascii " |                                                |\n"
.ascii " |                                                |\n"
.ascii " |                                                |\n"
.ascii " |                                                |\n"
.ascii " |                                                |\n"
.ascii " |                                                |\n"
.ascii " |                                                |\n"
.ascii " |                                                |\n"
.ascii " +------------------------------------------------+\n"
.ascii " |                                                |\n"
.ascii " |               superficie de Argos              |\n"

longp = .-planeta

cls:	.asciz "\x1b[H\x1b[2]" //una manera de borrar la pantalla usando ansi escape codes
lencls = .-cls

//----------------------------------------------------------
.text             @ Defincion de codigo del programa
//----------------------------------------------------------

//----------------------------------------------------------
imprimirString:
      .fnstart
            
      mov r7, #4 // Salida por pantalla  
      mov r0, #1      // Indicamos a SWI que sera una cadena           
      swi 0    // SWI, Software interrup
      bx lr //salimos de la funcion mifuncion
      .fnend

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

.global main        @ global, visible en todo el programa
main:
    
    bl clearScreen
             /* quiero  escribir una  x en (14,14) */
        ldr r3, =planeta
         mov r0, #14/*Fila coord. x*/
         mov r1, #14
  /*Column coord. y */
         mov r2,#'G'
     mov r4, #49  /*cantidad de elementos por fila*/
     mul r5, r4, r0   /*r5= nro de fila * cantidad de elementos*/
/*calculamos el puntero desde el matriz[0,0]*/
     add r3,r5  /*r3= puntero a la fila de inicio de mi matriz*/
/*sumamos desplazamiento de la columna a la q queremos ir r1=2*/
     add r3,r1 	/*r3= puntero a fila + coord. Columna*/

     strb r2, [r3]  /*escribimos el char en la coordenada */



 //imprimo el planeta para empezar
    ldr r2, =longp	//Tamaño de la cadena
    ldr r1, =planeta	//Cargamos en r1 la direccion del mensaje
    bl imprimirString
    
    mov r7, #1    // Salida al sistema
    swi 0

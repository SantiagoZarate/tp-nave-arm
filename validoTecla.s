.data
 /* Definicion de datos */
planeta:
.ascii " |------------------------------------------------|\n |    *** GrupoN  debe aterrizar en Argos ***     |\n |                 N                              |\n |                                                |\n |                                                |\n |                                                |\n |                                                |\n |                                                |\n |                                                |\n |                                                |\n |                                                |\n |                                                |\n |                                                |\n |                                                |\n |                                                |\n |                                                |\n |                                                |\n |                                                |\n |                                                |\n |                                                |\n +------------------------------------------------+\n |               Superficie de Argos              |\n |   puntaje:                                     |\n |------------------------------------------------|\n "
longitudPlaneta = .-planeta

navePosX: .word 21		/* Definimos la posicion inicial la nave en los ejes x e y*/
navePosY: .word 2


over: .asciz "+------------------------------------------------+\n|    Â¡Oh no! Â¡Â¡HAS PERDIDO!!                     |\n||                                              |\n ||\n|        Pulse Q para salir                      |\n|                                                |\n|                                                |\n|                                                |\n+------------------------------------------------+\n "
longOver = . - over
msj: .asciz "Validando el ingreso de teclas para movimiento \nsolo admito a, w, s, d y sus mayusc\nsi el ingreso es correcto me despido \n"
longMsj = . - msj

cls: .asciz "\x1b[H\x1b[2J" 		/*Una manera de borrar la pantalla usando ansi escape codes*/
lencls = .-cls

/****************************************************************************************/
/* variables */
/****************************************************************************************/

teclado: .ascii " " 

despedidaChau: .asciz "chau \n "
longitudChau = . - despedidaChau
.text

/*subrutinas para mostrar por pantalla en formato caracter de texto*/

imprimirString:
.fnstart 
	mov r7, #4
	mov r0, #1
	swi 0
	bx lr
.fnend

leoTeclado:
.fnstart 
	mov r7, #3 	/*syscall 3*/	
	mov r0, #0 		
	mov r2, #1 /*solo 1 tecla de movimiento o para termninar juego*/ 
ldr r1, =teclado  /*donde se guarda la cadena ingresada*/
	swi 0
	bx lr
.fnend

/*-----------------------------------------------------------------------------------*/
/*                          COMIENZA MI MAIN                                         */
/*-----------------------------------------------------------------------------------*/
.global main
main:
	
	ldr r1, =cls    /*Limpia pantalla*/ 
	ldr r2, =lencls
	bl imprimirString
					
	ldr r1, =msj	 /*Cargamos en r1 la direccion del mensaje*/
	ldr r2, =longMsj 	 
		
	bl imprimirString




/*-----------------------------------------------------------------------------------*/
/* VALIDO LETRA Y SE LA DIRECCION DE MOVIMIENTO */                                                                           
/*----------------------------------------------------------------------------*/
leerTeclaMovim:
    bl leoTeclado
    ldrb r1,[r1]
	cmp r1,#'a'	@ Evalua si la letra que se ingresa es a,w,s y d, con sus respectivas mayÃºsculas
	beq izq
	cmp r1,#'A'
	beq izq
b leerTeclaMovim

izq:
	ldr r1, =despedidaChau
	ldr r2, =longitudChau 
	bl  imprimirString 

/*cmp r1,#'w'
beq arriba
cmp r1,#'W'
beq arriba

cmp r1,#'d'
beq der
cmp r1,#'D'
beq der

cmp r1,#'s'
beq abajo
cmp r1,#'S'
beq abajo
	*/	/*Si no es ninguno de estos caracteres salta de nuevo a leer la letra por teclado */

der:
arriba:
abajo:

fin:
	mov r7, #1
	swi 0

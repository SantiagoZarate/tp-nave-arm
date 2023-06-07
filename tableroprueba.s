.data
reglas:
.ascii " |------------------------------------------------|\n"
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
.ascii " |                                                |\n"
.ascii " +------------------------------------------------+\n"
.ascii " |   ESTO ES UNA MENSAJE QUE SE MUESTRA UNA VEZ   |\n"
.ascii " |                EJECUTAMOS TABLERO              |\n"

largoreglas= .-reglas

inicio:

.ascii " |__________________ ¶¶¶¶¶¶¶¶ ____________________|\n"
.ascii " |______________¶¶¶¶¶ _______¶¶¶¶¶________________|\n"
.ascii " |____________¶¶¶ ________________¶¶¶_____________|\n"
.ascii " |__________¶¶¶ ____________________¶¶¶___________|\n"
.ascii " |_________¶¶ ________________________¶¶__________|\n"
.ascii " |________¶ ______¶¶¶_____¶¶¶__________¶¶_________|\n"
.ascii " |_______¶ _________¶¶______¶¶__________¶¶ _______|\n"
.ascii " |______¶¶ __________¶¶______¶¶_________¶¶________|\n"
.ascii " |______¶ ____________¶¶______¶¶___¶¶¶___¶¶_______|\n"
.ascii " |_____¶¶ _____¶¶_____¶¶______¶¶_____¶¶__¶¶_______|\n"
.ascii " |_____¶¶ ___¶¶¶______¶¶______¶¶______¶¶_¶¶_______|\n"
.ascii " |_____¶¶ __¶¶¶¶¶__________________¶¶_¶¶_¶¶_______|\n"
.ascii " |______¶ __¶¶__¶¶_________________¶¶____¶¶_______|\n"
.ascii " |______¶¶ ______¶¶______________¶¶¶____¶¶________|\n"
.ascii " |_______¶¶ ______¶¶____________¶¶¶_____¶¶________|\n"
.ascii " |________¶¶ _______¶¶¶¶_____¶¶¶¶______¶¶_________|\n"
.ascii " |_________¶¶ _________¶¶¶¶¶¶¶________¶¶__________|\n"
.ascii " |___________¶¶ ____________________¶¶____________|\n"
.ascii " |_____________¶¶¶ ______________¶¶¶______________|\n"
.ascii " |_______________ ¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶_________________|\n"
.ascii " |         BIENVENIDO A LA BATLLA ESPACIAL        |\n"

largoinicio= .-inicio

nombre: .ascii " "
largonombre= .-nombre

@La variable teclado lee las teclas de movimiento
teclado: .ascii " "
largoteclado= .-teclado

mensaje: .ascii "Ingresaste una A"
largomensaje= .-mensaje

cls:	.asciz "\x1b[H\x1b[2]" //una manera de borrar la pantalla usando ansi escape codes
largocls= .-cls

//----------------------------------------------------------
.text             @ Defincion de codigo del programa
//----------------------------------------------------------

//----------------------------------------------------------

izq:
.fnstart
     ldr r1, =mensaje
     ldr r2, =largomensaje
     bl imprimirstring
.fnend


//----------------------------------------------------------

imprimirstring:
.fnstart
      mov r7, #4         // Salida por pantalla  
      mov r0, #1         // Indicamos a SWI que sera una cadena           
      swi 0    // SWI, Software interrup
      bx lr //salimos de la funcion mifuncion
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
     ldr r1, =nombre    /*donde se guarda la cadena ingresada*/
	swi 0
	bx lr
.fnend

//----------------------------------------------------------

.global main
main:
     @LIMPIAR PANTALLA
     ldr r1, =cls
     ldr r2, =largocls
     bl imprimirstring

     @IMPRIMIR REGLAS
     ldr r1, =reglas
     ldr r2, =largoreglas
     bl imprimirstring

    @INGRESAR NOMBRE
     bl leernombre
     ldr r1, =inicio
     ldr r2, =largoinicio
     bl imprimirstring

validartecla:
     bl leerteclado
     ldrb r1,[r1]        @EN R1 GUARDO EL CONTENIDO DE LA DIRECCION DEL TECLADO
     cmp r1,#'a'	     @CICLO PARA VERIFICAR SI SE PRESIONO UNA TECLA DE MOVIMIENTO
     beq izq
	cmp r1,#'A'
	beq izq

     b validartecla
end:
    mov r7, #1    // Salida al sistema
    swi 0
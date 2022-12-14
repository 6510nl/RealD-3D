//-----------------------------------------------------------
// Variables
//-----------------------------------------------------------

.var	music = LoadSid("./SID/3D_Galax.sid")

//-----------------------------------------------------------
// Macros
//-----------------------------------------------------------

.macro SetBorderColor(color)
	{
	lda #color
	sta $d020
	}

//-----------------------------------------------------------
// Basic start line
//-----------------------------------------------------------

.pc	= $0801 "Basic Start"
	:BasicUpstart($6510)

//-----------------------------------------------------------
// Start of main program
//-----------------------------------------------------------
.pc	=	$6510	"Main Program"

	lda #music.startSong-1
	jsr music.init 

// Setup Screen

	lda #$00
	sta $d020
	sta $d021

	ldx #$00
!:	lda #$20
	sta $0400,x
	sta $0500,x
	sta $0600,x
	sta $0700,x
	lda #$05
	sta $d800,x
	sta $d900,x
	sta $da00,x
	sta $db00,x
	inx
	bne !-

	lda #128+140 // L
	sta $07e7

.var paal1 = 5
.var paal2 = 10
.var paal3 = 15

	lda #$a0
	sta $0400+paal1+(40*00)
	sta $0400+paal1+(40*01)
	sta $0400+paal1+(40*02)
	sta $0400+paal1+(40*03)
	sta $0400+paal1+(40*04)
	sta $0400+paal1+(40*05)
	sta $0400+paal1+(40*06)
	sta $0400+paal1+(40*07)
	sta $0400+paal1+(40*08)
	sta $0400+paal1+(40*09)
	sta $0400+paal1+(40*10)
	sta $0400+paal1+(40*11)
	sta $0400+paal1+(40*12)
	sta $0400+paal1+(40*13)
	sta $0400+paal1+(40*14)
	sta $0400+paal1+(40*15)
	sta $0400+paal1+(40*16)
	sta $0400+paal1+(40*17)
	sta $0400+paal1+(40*18)
	sta $0400+paal1+(40*19)
	sta $0400+paal1+(40*20)
	sta $0400+paal1+(40*21)
	sta $0400+paal1+(40*22)
	sta $0400+paal1+(40*23)
	sta $0400+paal1+(40*24)
	
	sta $0400+paal2+(40*00)
	sta $0400+paal2+(40*01)
	sta $0400+paal2+(40*02)
	sta $0400+paal2+(40*03)
	sta $0400+paal2+(40*04)
	sta $0400+paal2+(40*05)
	sta $0400+paal2+(40*06)
	sta $0400+paal2+(40*07)
	sta $0400+paal2+(40*08)
	sta $0400+paal2+(40*09)
	sta $0400+paal2+(40*10)
	sta $0400+paal2+(40*11)
	sta $0400+paal2+(40*12)
	sta $0400+paal2+(40*13)
	sta $0400+paal2+(40*14)
	sta $0400+paal2+(40*15)
	sta $0400+paal2+(40*16)
	sta $0400+paal2+(40*17)
	sta $0400+paal2+(40*18)
	sta $0400+paal2+(40*19)
	sta $0400+paal2+(40*20)
	sta $0400+paal2+(40*21)
	sta $0400+paal2+(40*22)
	sta $0400+paal2+(40*23)
	sta $0400+paal2+(40*24)

	sta $0400+paal3+(40*00)
	sta $0400+paal3+(40*01)
	sta $0400+paal3+(40*02)
	sta $0400+paal3+(40*03)
	sta $0400+paal3+(40*04)
	sta $0400+paal3+(40*05)
	sta $0400+paal3+(40*06)
	sta $0400+paal3+(40*07)
	sta $0400+paal3+(40*08)
	sta $0400+paal3+(40*09)
	sta $0400+paal3+(40*10)
	sta $0400+paal3+(40*11)
	sta $0400+paal3+(40*12)
	sta $0400+paal3+(40*13)
	sta $0400+paal3+(40*14)
	sta $0400+paal3+(40*15)
	sta $0400+paal3+(40*16)
	sta $0400+paal3+(40*17)
	sta $0400+paal3+(40*18)
	sta $0400+paal3+(40*19)
	sta $0400+paal3+(40*20)
	sta $0400+paal3+(40*21)
	sta $0400+paal3+(40*22)
	sta $0400+paal3+(40*23)
	sta $0400+paal3+(40*24)
	
	lda #$0f
	sta $d800+paal1+(40*00)
	sta $d800+paal1+(40*01)
	sta $d800+paal1+(40*02)
	sta $d800+paal1+(40*03)
	sta $d800+paal1+(40*04)
	sta $d800+paal1+(40*05)
	sta $d800+paal1+(40*06)
	sta $d800+paal1+(40*07)
	sta $d800+paal1+(40*08)
	sta $d800+paal1+(40*09)
	sta $d800+paal1+(40*10)
	sta $d800+paal1+(40*11)
	sta $d800+paal1+(40*12)
	sta $d800+paal1+(40*13)
	sta $d800+paal1+(40*14)
	sta $d800+paal1+(40*15)
	sta $d800+paal1+(40*16)
	sta $d800+paal1+(40*17)
	sta $d800+paal1+(40*18)
	sta $d800+paal1+(40*19)
	sta $d800+paal1+(40*20)
	sta $d800+paal1+(40*20)
	sta $d800+paal1+(40*21)
	sta $d800+paal1+(40*22)
	sta $d800+paal1+(40*23)
	sta $d800+paal1+(40*24)

	lda #$05
	sta $d800+paal2+(40*00)
	sta $d800+paal2+(40*01)
	sta $d800+paal2+(40*02)
	sta $d800+paal2+(40*03)
	sta $d800+paal2+(40*04)
	sta $d800+paal2+(40*05)
	sta $d800+paal2+(40*06)
	sta $d800+paal2+(40*07)
	sta $d800+paal2+(40*08)
	sta $d800+paal2+(40*09)
	sta $d800+paal2+(40*10)
	sta $d800+paal2+(40*11)
	sta $d800+paal2+(40*12)
	sta $d800+paal2+(40*13)
	sta $d800+paal2+(40*14)
	sta $d800+paal2+(40*15)
	sta $d800+paal2+(40*16)
	sta $d800+paal2+(40*17)
	sta $d800+paal2+(40*18)
	sta $d800+paal2+(40*19)
	sta $d800+paal2+(40*20)
	sta $d800+paal2+(40*20)
	sta $d800+paal2+(40*21)
	sta $d800+paal2+(40*22)
	sta $d800+paal2+(40*23)
	sta $d800+paal2+(40*24)

	lda #$0f
	sta $d800+paal3+(40*00)
	sta $d800+paal3+(40*01)
	sta $d800+paal3+(40*02)
	sta $d800+paal3+(40*03)
	sta $d800+paal3+(40*04)
	sta $d800+paal3+(40*05)
	sta $d800+paal3+(40*06)
	sta $d800+paal3+(40*07)
	sta $d800+paal3+(40*08)
	sta $d800+paal3+(40*09)
	sta $d800+paal3+(40*10)
	sta $d800+paal3+(40*11)
	sta $d800+paal3+(40*12)
	sta $d800+paal3+(40*13)
	sta $d800+paal3+(40*14)
	sta $d800+paal3+(40*15)
	sta $d800+paal3+(40*16)
	sta $d800+paal3+(40*17)
	sta $d800+paal3+(40*18)
	sta $d800+paal3+(40*19)
	sta $d800+paal3+(40*20)
	sta $d800+paal3+(40*20)
	sta $d800+paal3+(40*21)
	sta $d800+paal3+(40*22)
	sta $d800+paal3+(40*23)
	sta $d800+paal3+(40*24)
	
// Enable Sprites
	lda #$00
	sta $d017	//	Expand y
	sta $d01d	//	Expand x
	sta $d01c	//	hires sprites
	lda #$ff
	sta $d015	//  Enable sprites
	lda #$01	//	Select colornumber
	sta $d027	//	Sprite 0 color
	lda #$02	//	Select colornumber
	sta $d028	//	Sprite 1 color
	lda #$03	//	Select colornumber
	sta $d029	//	Sprite 2 color
	lda #$04	//	Select colornumber
	sta $d02a	//	Sprite 3 color
	sta $d02b	//	Sprite 4 color
	sta $d02c	//	Sprite 5 color
	sta $d02d	//	Sprite 6 color
	sta $d02e	//	Sprite 7 color

// Initialise IRQ
	sei	//	disable maskable IRQs

	lda #$7f                  
	sta $dc0d	//	disable timer interrupts which can be generated by the two CIA chips
	sta $dd0d	//	the kernal uses such an interrupt to flash the cursor and scan the keyboard, so we better stop it.

	lda $dc0d	//	by reading this two registers we negate any pending CIA irqs.
	lda $dd0d	//	if we don't do this, a pending CIA irq might occur after we finish setting up our irq. we don't want that to happen.

	lda #$01	//	this is how to tell the VICII to generate a raster interrupt
	sta $d01a

	lda #$00	//	this is how to tell at which rasterline we want the irq to be triggered
	sta $d012                 

	// lda #%00111010	//	#$1b - as there are more than 256 rasterlines, the topmost bit of $d011 serves as
	// sta $d011  	//	the 8th bit for the rasterline we want our irq to be triggered.
	//            	//	here we simply set up a character screen, leaving the topmost bit 0.

	// lda #%00011000	//	Video Control Register
	// sta $d016  	//	7-6 Unused
	// 	//	5 	Always set to 0
	//            	//	4	Multicolor
	//            	//	3	38/40 text mode
	//            	//	2-0	Smooth scroll
	// lda #%00011000	//	VIC Memory Control Register
	// sta $d018  	//	7-4 Video Matrix Base Address
	// 	//	3-1 Character dot base
	           			           	
	lda #$35	//	we turn off the BASIC and KERNAL rom here
	sta $01		//	the cpu now sees RAM everywhere except at $d000-$e000, where still the registers of
	           	//	SID/VICII/etc are visible

	lda #<irq 	//	this is how we set up
	sta $fffe	//	the address of our interrupt code
	lda #>irq
	sta $ffff

	cli	//	enable maskable interrupts again
start:
	jmp start	//	we better don't RTS, the ROMS are now switched off, there's no way back to the system

irq:

	//	Being all kernal irq handlers switched off we have to do more work by ourselves.
	//	When an interrupt happens the CPU will stop what its doing, store the status and return address
	//	into the stack, and then jump to the interrupt routine. It will not store other registers, and if
	//	we destroy the value of A/X/Y in the interrupt routine, then when returning from the interrupt to
	//	what the CPU was doing will lead to unpredictable results (most probably a crash). So we better
	//	store those registers, and restore their original value before reentering the code the CPU was
	//	interrupted running.
	//
	//	If you won't change the value of a register you are safe to not to store / restore its value.
	//	However, it's easy to screw up code like that with later modifying it to use another register too
	//	and forgetting about storing its state.
	//
	//	The method shown here to store the registers is the most orthodox and most failsafe.

	pha        	//	store register A in stack
	txa        	//
	pha        	//	store register X in stack
	tya        	//
	pha        	//	store register Y in stack

!:	lda $d012
	cmp #$fa
	bne	!-
	nop
	nop
	nop 
	lda #$00
	sta $d011

	ldx #$00
!:	inx
	cpx #$10
	bne !-
	lda #%00011011
	sta $d011

	:SetBorderColor(1)
	jsr joyplay
	:SetBorderColor(0)

	:SetBorderColor(2)
	jsr music.play
	:SetBorderColor(0)



	lda #$ff	//	;this is the orthodox and safe way of clearing the interrupt condition of the 
	sta $d019	//	;if you don't do this the interrupt condition will be present all the time an
	//	;up having the CPU running the interrupt code all the time, as when it exists 
	//	;interrupt, the interrupt request from the VICII will be there again regardles
	//	;rasterline counter.
	//
	//	;it's pretty safe to use inc $d019 (or any other rmw instruction) for brevity,
	//	;will only fail on hardware like c65 or supercpu. c64dtv is ok with this thoug

	pla
	tay	//	;restore register Y from stack (remember stack is FIFO: First In First Out)
	pla	//
	tax	//	;restore register X from stack
	pla	//	;restore register A from stack
	rti	//	;Return From Interrupt, this will load into the Program Counter register the a
	   	//	;where the CPU was when the interrupt condition arised which will make the CPU
	   	//	;the code it was interrupted at also restores the status register of the CPU

//-----------------------------------------------------------

joyplay:
	lda #$80
	sta $07f8
	sta $07f9
	sta $07fa
	sta $07fb
	
	lda spr1
	sta $d000
	lda spr2
	sta $d002
	lda spr3
	sta $d004
	lda spr4
	sta $d006
	lda spr1+1
	sta $d001
	lda spr2+1
	sta $d003
	lda spr3+1
	sta $d005
	lda spr4+1
	sta $d007
	
	ldx s1x
xloop:	
	lda SinusTable,x
	clc
	adc offx
	sta spr1
	sta spr3
	clc
	adc #30
	sta spr2
	sta spr4

	ldy s1y
	lda SinusTable,y
	clc
	adc offy
	sta spr1+1
	sta spr2+1
	clc
	adc #27
	sta spr3+1
	sta spr4+1

		inc s1x
//	inc s1y
//	inc s1y

//	inc slowj
//	lda slowj
//	cmp #$02	
//	bne slowjump
//	lda #$00
//	sta slowj

	lda $dc00
	cmp #$7e
	beq up
	cmp #$76
	beq rightUp
	cmp #$77
	beq right
	cmp #$75
	beq rightDown
	cmp #$7d
	beq down
	cmp #$79
	beq leftDown
	cmp #$7b
	beq left
	cmp #$7a
	beq leftUp
	cmp #$6f
	beq button
slowjump:
	rts

button: 
	lda #$60
	sta offx
	lda #$80
	sta offy
	rts
up:
	dec offy
	rts
rightUp:
	dec offy
	inc offx
	rts
right:
	inc offx
	rts
rightDown:
	inc offy
	inc offx
	rts
down:
	inc offy
	rts
leftDown:
	inc offy
	dec offx
	rts
left:
	dec offx
	rts
leftUp:
	dec offy
	dec offx
	rts

offx:	.byte $60
offy:	.byte $80
slowj:	.byte $00
//-----------------------------------------------------------
.pc	=	$3000	"Keep In Mind table"

spr1:	.byte $00, $00
spr2:	.byte $00, $10
spr3:	.byte $00, $20
spr4:	.byte $00, $40

s1x:	.byte $00
s1y:	.byte $80

//-----------------------------------------------------------

.pc = $2000 "Spritedata"

	.byte $ff, $ff, $ff
	.byte $ff, $ff, $ff
	.byte $ff, $ff, $ff
	.byte $ff, $ff, $ff
	.byte $ff, $ff, $ff
	.byte $ff, $ff, $ff
	.byte $ff, $ff, $ff
	.byte $ff, $ff, $ff
	.byte $ff, $ff, $ff
	.byte $ff, $ff, $ff
	.byte $ff, $ff, $ff
	.byte $ff, $ff, $ff
	.byte $ff, $ff, $ff
	.byte $ff, $ff, $ff
	.byte $ff, $ff, $ff
	.byte $ff, $ff, $ff
	.byte $ff, $ff, $ff
	.byte $ff, $ff, $ff
	.byte $ff, $ff, $ff
	.byte $ff, $ff, $ff

//-----------------------------------------------------------
.pc	=	$7000	"SinusTable"

SinusTable:

.var diameter = 40

	.fill 256, diameter * sin(toRadians(i*360/256)) // Generates a sine curve

//-----------------------------------------------------------


//-----------------------------------------------------------
.pc	=	music.location	"SID"
	.fill	music.size, music.getData(i)
.print ""
.print "SID Data"
.print "--------"
.print "location=$"+toHexString(music.location)
.print "init=$"+toHexString(music.init)
.print "play=$"+toHexString(music.play)
.print "songs="+music.songs
.print "startSong="+music.startSong
.print "size=$"+toHexString(music.size)
.print "name="+music.name
.print "author="+music.author
.print "copyright="+music.copyright

//-----------------------------------------------------------

	.file	"EjemPractica2.c"
	.text
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "El numero es igual que 0\0"
.LC1:
	.ascii "El valor de opc es: %d \12\0"
	.align 8
.LC2:
	.ascii "El valor de opc ha sido borrado. \0"
	.align 8
.LC3:
	.ascii "El nuevo valor de opc es: %d \12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	call	__main
	leaq	.LC0(%rip), %rcx
	call	puts
	movl	$0, %edx
	leaq	.LC1(%rip), %rcx
	call	printf
	leaq	.LC2(%rip), %rcx
	call	puts
	movl	$5, %edx
	leaq	.LC3(%rip), %rcx
	call	printf
	movl	$0, %eax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	puts;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef

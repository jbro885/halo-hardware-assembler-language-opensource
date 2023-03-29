	.file	"xxd.s"
	.text
	.globl	version
	.data
	.align 32
	.type	version, @object
	.size	version, 41
version:
	.string	"xxd 4 halo"
	.globl	osver
	.bss
	.type	osver, @object
	.size	osver, 1
osver:
	.zero	1
	.globl	hexxa
	.data
	.align 32
	.type	hexxa, @object
	.size	hexxa, 33
hexxa:
	.string	"0123456789abcdef0123456789ABCDEF"
	.globl	hexx
	.section	.data.rel.local,"aw"
	.align 8
	.type	hexx, @object
	.size	hexx, 8
hexx:
	.quad	hexxa
	.local	pname
	.comm	pname,8,8
	.section	.rodata
	.align 8
.LC0:
	.string	"Usage:\n       %s [options] [infile [outfile]]\n"
	.align 8
.LC1:
	.string	"    or\n       %s -r [-s [-]offset] [-c cols] [-ps] [infile [outfile]]\n"
.LC2:
	.string	"Options:\n"
	.align 8
.LC3:
	.string	"    -a          toggle autoskip: A single '*' replaces nul-lines. Default off.\n"
	.align 8
.LC4:
	.string	"    -b          binary digit dump (incompatible with -ps,-i,-r). Default hex.\n"
	.align 8
.LC5:
	.string	"    -C          capitalize variable names in C include file style (-i).\n"
	.align 8
.LC6:
	.string	"    -c cols     format <cols> octets per line. Default 16 (-i: 12, -ps: 30).\n"
	.align 8
.LC7:
	.string	"    -E          show characters in EBCDIC. Default ASCII.\n"
	.align 8
.LC8:
	.string	"    -e          little-endian dump (incompatible with -ps,-i,-r).\n"
	.align 8
.LC9:
	.string	"    -g bytes    number of octets per group in normal output. Default 2 (-e: 4).\n"
	.align 8
.LC10:
	.string	"    -h          print this summary.\n"
	.align 8
.LC11:
	.string	"    -i          output in C include file style.\n"
	.align 8
.LC12:
	.string	"    -l len      stop after <len> octets.\n"
	.align 8
.LC13:
	.string	"    -n name     set the variable name used in C include output (-i).\n"
	.align 8
.LC14:
	.string	"    -o off      add <off> to the displayed file position.\n"
	.align 8
.LC15:
	.string	"    -ps         output in postscript plain hexdump style.\n"
	.align 8
.LC16:
	.string	"    -r          reverse operation: convert (or patch) hexdump into binary.\n"
	.align 8
.LC17:
	.string	"    -r -s off   revert with <off> added to file positions found in hexdump.\n"
	.align 8
.LC18:
	.string	"    -d          show offset in decimal instead of hex.\n"
.LC19:
	.string	"(or +: rel.) "
.LC20:
	.string	"[+][-]"
	.align 8
.LC21:
	.string	"    -s %sseek  start at <seek> bytes abs. %sinfile offset.\n"
	.align 8
.LC22:
	.string	"    -u          use upper case hex letters.\n"
	.align 8
.LC23:
	.string	"    -v          show version: \"%s%s\".\n"
	.text
	.type	exit_with_usage, @function
exit_with_usage:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	pname(%rip), %rdx
	movq	stderr(%rip), %rax
	leaq	.LC0(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	pname(%rip), %rdx
	movq	stderr(%rip), %rax
	leaq	.LC1(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$9, %edx
	movl	$1, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$79, %edx
	movl	$1, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$78, %edx
	movl	$1, %esi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$72, %edx
	movl	$1, %esi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$77, %edx
	movl	$1, %esi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$58, %edx
	movl	$1, %esi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$66, %edx
	movl	$1, %esi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$80, %edx
	movl	$1, %esi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$36, %edx
	movl	$1, %esi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$48, %edx
	movl	$1, %esi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$41, %edx
	movl	$1, %esi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$69, %edx
	movl	$1, %esi
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$58, %edx
	movl	$1, %esi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$58, %edx
	movl	$1, %esi
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$75, %edx
	movl	$1, %esi
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$76, %edx
	movl	$1, %esi
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$55, %edx
	movl	$1, %esi
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	movq	stderr(%rip), %rax
	leaq	.LC19(%rip), %rdx
	movq	%rdx, %rcx
	leaq	.LC20(%rip), %rdx
	leaq	.LC21(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$44, %edx
	movl	$1, %esi
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	movq	stderr(%rip), %rax
	leaq	osver(%rip), %rdx
	movq	%rdx, %rcx
	leaq	version(%rip), %rdx
	leaq	.LC23(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE0:
	.size	exit_with_usage, .-exit_with_usage
	.section	.rodata
.LC24:
	.string	"%s: "
	.text
	.type	perror_exit, @function
perror_exit:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	pname(%rip), %rdx
	movq	stderr(%rip), %rax
	leaq	.LC24(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$0, %edi
	call	perror@PLT
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE1:
	.size	perror_exit, .-perror_exit
	.section	.rodata
.LC25:
	.string	"%s: %s\n"
	.text
	.type	error_exit, @function
error_exit:
.LFB2:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	pname(%rip), %rdx
	movq	stderr(%rip), %rax
	movq	-16(%rbp), %rcx
	leaq	.LC25(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2:
	.size	error_exit, .-error_exit
	.type	getc_or_die, @function
getc_or_die:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	getc@PLT
	movl	%eax, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	jne	.L5
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ferror@PLT
	testl	%eax, %eax
	je	.L5
	movl	$2, %edi
	call	perror_exit
.L5:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	getc_or_die, .-getc_or_die
	.type	putc_or_die, @function
putc_or_die:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	putc@PLT
	cmpl	$-1, %eax
	jne	.L9
	movl	$3, %edi
	call	perror_exit
.L9:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	putc_or_die, .-putc_or_die
	.type	fputs_or_die, @function
fputs_or_die:
.LFB5:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs@PLT
	cmpl	$-1, %eax
	jne	.L12
	movl	$3, %edi
	call	perror_exit
.L12:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	fputs_or_die, .-fputs_or_die
	.type	fclose_or_die, @function
fclose_or_die:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	testl	%eax, %eax
	je	.L14
	movl	$3, %edi
	call	perror_exit
.L14:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	testl	%eax, %eax
	je	.L16
	movl	$2, %edi
	call	perror_exit
.L16:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	fclose_or_die, .-fclose_or_die
	.type	parse_hex_digit, @function
parse_hex_digit:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$47, -4(%rbp)
	jle	.L18
	cmpl	$57, -4(%rbp)
	jg	.L18
	movl	-4(%rbp), %eax
	subl	$48, %eax
	jmp	.L24
.L18:
	cmpl	$96, -4(%rbp)
	jle	.L20
	cmpl	$102, -4(%rbp)
	jg	.L20
	movl	-4(%rbp), %eax
	subl	$87, %eax
	jmp	.L19
.L20:
	cmpl	$64, -4(%rbp)
	jle	.L22
	cmpl	$70, -4(%rbp)
	jg	.L22
	movl	-4(%rbp), %eax
	subl	$55, %eax
	jmp	.L19
.L22:
	movl	$-1, %eax
	jmp	.L24
.L19:
.L24:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	parse_hex_digit, .-parse_hex_digit
	.type	skip_to_eol, @function
skip_to_eol:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	jmp	.L26
.L28:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	getc_or_die
	movl	%eax, -12(%rbp)
.L26:
	cmpl	$10, -12(%rbp)
	je	.L27
	cmpl	$-1, -12(%rbp)
	jne	.L28
.L27:
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	skip_to_eol, .-skip_to_eol
	.section	.rodata
.LC26:
	.string	"Sorry, cannot seek backwards."
	.text
	.type	huntype, @function
huntype:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movl	%ecx, -72(%rbp)
	movq	%r8, -80(%rbp)
	movl	$1, -36(%rbp)
	movl	$-1, -32(%rbp)
	movl	$0, -28(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	rewind@PLT
	jmp	.L31
.L48:
	cmpl	$13, -40(%rbp)
	jne	.L32
	jmp	.L31
.L32:
	cmpl	$1, -72(%rbp)
	jne	.L33
	cmpl	$32, -40(%rbp)
	je	.L31
	cmpl	$10, -40(%rbp)
	je	.L31
	cmpl	$9, -40(%rbp)
	jne	.L33
	jmp	.L31
.L33:
	movl	-28(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	parse_hex_digit
	movl	%eax, -32(%rbp)
	cmpl	$-1, -32(%rbp)
	jne	.L35
	cmpl	$0, -36(%rbp)
	je	.L35
	jmp	.L31
.L35:
	movl	$0, -36(%rbp)
	cmpl	$0, -72(%rbp)
	jne	.L36
	movl	-24(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jl	.L36
	cmpl	$0, -32(%rbp)
	jns	.L37
	movl	$0, -24(%rbp)
	jmp	.L31
.L37:
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movl	-32(%rbp), %eax
	cltq
	orq	%rdx, %rax
	movq	%rax, -8(%rbp)
	jmp	.L31
.L36:
	movq	-80(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -16(%rbp)
	je	.L38
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	testl	%eax, %eax
	je	.L39
	movl	$3, %edi
	call	perror_exit
.L39:
	movq	-80(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	subq	-16(%rbp), %rax
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fseek@PLT
	testl	%eax, %eax
	js	.L40
	movq	-80(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
.L40:
	movq	-80(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -16(%rbp)
	jle	.L42
	leaq	.LC26(%rip), %rax
	movq	%rax, %rsi
	movl	$5, %edi
	call	error_exit
	jmp	.L42
.L43:
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	putc_or_die
	addq	$1, -16(%rbp)
.L42:
	movq	-80(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -16(%rbp)
	jl	.L43
.L38:
	cmpl	$0, -28(%rbp)
	js	.L44
	cmpl	$0, -32(%rbp)
	js	.L44
	movl	-28(%rbp), %eax
	sall	$4, %eax
	orl	-32(%rbp), %eax
	movq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	putc_or_die
	addq	$1, -16(%rbp)
	addq	$1, -8(%rbp)
	movl	$-1, -32(%rbp)
	cmpl	$0, -72(%rbp)
	jne	.L51
	addl	$1, -24(%rbp)
	movl	-24(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jl	.L51
	movl	-40(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	skip_to_eol
	movl	%eax, -40(%rbp)
	jmp	.L51
.L44:
	cmpl	$0, -32(%rbp)
	jns	.L46
	cmpl	$0, -28(%rbp)
	jns	.L46
	cmpl	$0, -20(%rbp)
	jns	.L46
	movl	-40(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	skip_to_eol
	movl	%eax, -40(%rbp)
	jmp	.L46
.L51:
	nop
.L46:
	cmpl	$10, -40(%rbp)
	jne	.L31
	cmpl	$0, -72(%rbp)
	jne	.L47
	movq	$0, -8(%rbp)
.L47:
	movl	-68(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	$1, -36(%rbp)
.L31:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	getc@PLT
	movl	%eax, -40(%rbp)
	cmpl	$-1, -40(%rbp)
	jne	.L48
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	testl	%eax, %eax
	je	.L49
	movl	$3, %edi
	call	perror_exit
.L49:
	movq	-64(%rbp), %rax
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	fseek@PLT
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fclose_or_die
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	huntype, .-huntype
	.section	.rodata
.LC27:
	.string	"*\n"
	.text
	.type	xxdline, @function
xxdline:
.LFB10:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L53
	movl	zero_seen.2(%rip), %eax
	cmpl	$1, %eax
	jne	.L53
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	z.1(%rip), %rax
	movq	%rax, %rdi
	call	strcpy@PLT
.L53:
	cmpl	$0, -20(%rbp)
	jne	.L54
	movl	zero_seen.2(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, zero_seen.2(%rip)
	testl	%eax, %eax
	jne	.L61
.L54:
	cmpl	$0, -20(%rbp)
	je	.L56
	cmpl	$0, -20(%rbp)
	jns	.L57
	movl	zero_seen.2(%rip), %eax
	subl	$1, %eax
	movl	%eax, zero_seen.2(%rip)
.L57:
	movl	zero_seen.2(%rip), %eax
	cmpl	$2, %eax
	jne	.L58
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	z.1(%rip), %rax
	movq	%rax, %rdi
	call	fputs_or_die
.L58:
	movl	zero_seen.2(%rip), %eax
	cmpl	$2, %eax
	jle	.L56
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	call	fputs_or_die
.L56:
	cmpl	$0, -20(%rbp)
	jns	.L59
	movl	zero_seen.2(%rip), %eax
	testl	%eax, %eax
	jle	.L60
.L59:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs_or_die
.L60:
	cmpl	$0, -20(%rbp)
	je	.L61
	movl	$0, zero_seen.2(%rip)
.L61:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	xxdline, .-xxdline
	.data
	.align 32
	.type	etoa64, @object
	.size	etoa64, 192
etoa64:
	.ascii	" \240\241\242\243\244\245\246\247\250\325.<(+|&\251\252\253\254"
	.ascii	"\255\256\257\260\261!$*);~-/\262\263\264\265\266\267\270\271"
	.ascii	"\313,%_>?\272\273\274\275\276\277\300\301\302`:#@'=\"\303abc"
	.ascii	"defghi\304\305\306\307\310\311\312jklmnopqr^\314\315\316\317"
	.ascii	"\320\321\345stuvwxyz\322\323\324[\326\327\330\331\332\333\334"
	.ascii	"\335\336\337\340\341\342\343\344]\346\347{ABCDEFGHI\350\351\352"
	.ascii	"\353\354\355}JKLMNOPQR\356\357\360\361\362\363\\\237STUVWXYZ"
	.ascii	"\364\365\366\367\370\3710123456789\372\373\374\375\376\377"
	.section	.rodata
.LC28:
	.string	"--"
.LC29:
	.string	"-a"
.LC30:
	.string	"-b"
.LC31:
	.string	"-e"
.LC32:
	.string	"-u"
.LC33:
	.string	"-p"
.LC34:
	.string	"-i"
.LC35:
	.string	"-C"
.LC36:
	.string	"-d"
.LC37:
	.string	"-r"
.LC38:
	.string	"-E"
.LC39:
	.string	"-v"
.LC40:
	.string	"%s%s\n"
.LC41:
	.string	"-c"
.LC42:
	.string	"apitalize"
.LC43:
	.string	"ols"
.LC44:
	.string	"-g"
.LC45:
	.string	"roup"
.LC46:
	.string	"-o"
.LC47:
	.string	"ffset"
.LC48:
	.string	"-s"
.LC49:
	.string	"kip"
.LC50:
	.string	"eek"
.LC51:
	.string	"-l"
.LC52:
	.string	"en"
.LC53:
	.string	"-n"
.LC54:
	.string	"ame"
	.align 8
.LC55:
	.string	"%s: invalid number of columns (max. %d).\n"
	.align 8
.LC56:
	.string	"number of octets per group must be a power of 2 with -e."
.LC57:
	.string	"r"
.LC58:
	.string	"w"
	.align 8
.LC59:
	.string	"Sorry, cannot revert this type of hexdump"
.LC60:
	.string	"Sorry, cannot seek."
.LC61:
	.string	"__"
.LC62:
	.string	""
.LC63:
	.string	"unsigned char %s"
.LC64:
	.string	"[] = {\n"
.LC65:
	.string	"  "
.LC66:
	.string	",\n  "
.LC67:
	.string	", "
.LC68:
	.string	"%s0x%02x"
.LC69:
	.string	"%s0X%02X"
.LC70:
	.string	"\n"
.LC71:
	.string	"};\n"
.LC72:
	.string	"unsigned int %s"
.LC73:
	.string	"LEN"
.LC74:
	.string	"len"
.LC75:
	.string	"_%s = %d;\n"
.LC76:
	.string	"%08ld:"
.LC77:
	.string	"%08lx:"
	.text
	.globl	main
	.type	main, @function
main:
.LFB11:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$200, %rsp
	.cfi_offset 3, -24
	movl	%edi, -196(%rbp)
	movq	%rsi, -208(%rbp)
	movl	$0, -172(%rbp)
	movl	$1, -168(%rbp)
	movl	$0, -164(%rbp)
	movl	$0, -160(%rbp)
	movl	$0, -156(%rbp)
	movl	$0, -152(%rbp)
	movl	$0, -148(%rbp)
	movl	$0, -144(%rbp)
	movl	$0, -140(%rbp)
	movl	$0, -136(%rbp)
	movl	$0, -132(%rbp)
	movl	$0, -128(%rbp)
	movl	$-1, -124(%rbp)
	movq	$-1, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -32(%rbp)
	movl	$9, -116(%rbp)
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, pname(%rip)
	movq	pname(%rip), %rax
	movq	%rax, -40(%rbp)
	jmp	.L63
.L64:
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L63
	movq	-40(%rbp), %rax
	movq	%rax, pname(%rip)
.L63:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L64
	jmp	.L65
.L115:
	movq	-208(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rbx
	movq	-208(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movl	$2, %edx
	leaq	.LC28(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L66
	movq	-208(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L66
	movl	$1, %eax
	jmp	.L67
.L66:
	movl	$0, %eax
.L67:
	cltq
	addq	%rbx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$2, %edx
	leaq	.LC29(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L68
	movl	$1, %eax
	subl	-144(%rbp), %eax
	movl	%eax, -144(%rbp)
	jmp	.L69
.L68:
	movq	-40(%rbp), %rax
	movl	$2, %edx
	leaq	.LC30(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L70
	movl	$3, -140(%rbp)
	jmp	.L69
.L70:
	movq	-40(%rbp), %rax
	movl	$2, %edx
	leaq	.LC31(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L71
	movl	$4, -140(%rbp)
	jmp	.L69
.L71:
	movq	-40(%rbp), %rax
	movl	$2, %edx
	leaq	.LC32(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L72
	leaq	16+hexxa(%rip), %rax
	movq	%rax, hexx(%rip)
	jmp	.L69
.L72:
	movq	-40(%rbp), %rax
	movl	$2, %edx
	leaq	.LC33(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L73
	movl	$1, -140(%rbp)
	jmp	.L69
.L73:
	movq	-40(%rbp), %rax
	movl	$2, %edx
	leaq	.LC34(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L74
	movl	$2, -140(%rbp)
	jmp	.L69
.L74:
	movq	-40(%rbp), %rax
	movl	$2, %edx
	leaq	.LC35(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L75
	movl	$1, -136(%rbp)
	jmp	.L69
.L75:
	movq	-40(%rbp), %rax
	movl	$2, %edx
	leaq	.LC36(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L76
	movl	$1, -132(%rbp)
	jmp	.L69
.L76:
	movq	-40(%rbp), %rax
	movl	$2, %edx
	leaq	.LC37(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L77
	addl	$1, -160(%rbp)
	jmp	.L69
.L77:
	movq	-40(%rbp), %rax
	movl	$2, %edx
	leaq	.LC38(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L78
	addl	$1, -128(%rbp)
	jmp	.L69
.L78:
	movq	-40(%rbp), %rax
	movl	$2, %edx
	leaq	.LC39(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L79
	movq	stderr(%rip), %rax
	leaq	osver(%rip), %rdx
	movq	%rdx, %rcx
	leaq	version(%rip), %rdx
	leaq	.LC40(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$0, %edi
	call	exit@PLT
.L79:
	movq	-40(%rbp), %rax
	movl	$2, %edx
	leaq	.LC41(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L80
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L81
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movl	$9, %edx
	movq	%rax, %rsi
	leaq	.LC42(%rip), %rax
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L81
	movl	$1, -136(%rbp)
	jmp	.L69
.L81:
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L83
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movl	$3, %edx
	movq	%rax, %rsi
	leaq	.LC43(%rip), %rax
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L83
	movl	$1, -152(%rbp)
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtol@PLT
	movl	%eax, -156(%rbp)
	jmp	.L69
.L83:
	movq	-208(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L84
	call	exit_with_usage
.L84:
	movl	$1, -152(%rbp)
	movq	-208(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtol@PLT
	movl	%eax, -156(%rbp)
	addq	$8, -208(%rbp)
	subl	$1, -196(%rbp)
	jmp	.L69
.L80:
	movq	-40(%rbp), %rax
	movl	$2, %edx
	leaq	.LC44(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L85
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L86
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movl	$4, %edx
	movq	%rax, %rsi
	leaq	.LC45(%rip), %rax
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L86
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtol@PLT
	movl	%eax, -124(%rbp)
	jmp	.L69
.L86:
	movq	-208(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L88
	call	exit_with_usage
.L88:
	movq	-208(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtol@PLT
	movl	%eax, -124(%rbp)
	addq	$8, -208(%rbp)
	subl	$1, -196(%rbp)
	jmp	.L69
.L85:
	movq	-40(%rbp), %rax
	movl	$2, %edx
	leaq	.LC46(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L89
	movl	$0, -112(%rbp)
	movl	$0, -108(%rbp)
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L90
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movl	$5, %edx
	movq	%rax, %rsi
	leaq	.LC47(%rip), %rax
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L90
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtoul@PLT
	movq	%rax, -48(%rbp)
	jmp	.L69
.L90:
	movq	-208(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L92
	call	exit_with_usage
.L92:
	movq	-208(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$43, %al
	jne	.L93
	addl	$1, -112(%rbp)
.L93:
	movq	-208(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rdx
	movl	-112(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L94
	addl	$1, -108(%rbp)
.L94:
	cmpl	$0, -108(%rbp)
	je	.L95
	movq	-208(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rdx
	movl	-112(%rbp), %eax
	movslq	%eax, %rcx
	movl	-108(%rbp), %eax
	cltq
	addq	%rcx, %rax
	addq	%rdx, %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtoul@PLT
	negq	%rax
	movq	%rax, -48(%rbp)
	jmp	.L96
.L95:
	movq	-208(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rdx
	movl	-112(%rbp), %eax
	movslq	%eax, %rcx
	movl	-108(%rbp), %eax
	cltq
	addq	%rcx, %rax
	addq	%rdx, %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtoul@PLT
	movq	%rax, -48(%rbp)
.L96:
	addq	$8, -208(%rbp)
	subl	$1, -196(%rbp)
	jmp	.L69
.L89:
	movq	-40(%rbp), %rax
	movl	$2, %edx
	leaq	.LC48(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L97
	movl	$0, -168(%rbp)
	movl	$0, -164(%rbp)
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L98
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movl	$3, %edx
	movq	%rax, %rsi
	leaq	.LC49(%rip), %rax
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L98
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movl	$3, %edx
	movq	%rax, %rsi
	leaq	.LC50(%rip), %rax
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L98
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	cmpb	$43, %al
	jne	.L99
	addl	$1, -168(%rbp)
.L99:
	movl	-168(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L100
	addl	$1, -164(%rbp)
.L100:
	movl	-168(%rbp), %eax
	movslq	%eax, %rdx
	movl	-164(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	2(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtol@PLT
	movq	%rax, -56(%rbp)
	jmp	.L69
.L98:
	movq	-208(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L102
	call	exit_with_usage
.L102:
	movq	-208(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$43, %al
	jne	.L103
	addl	$1, -168(%rbp)
.L103:
	movq	-208(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rdx
	movl	-168(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L104
	addl	$1, -164(%rbp)
.L104:
	movq	-208(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rdx
	movl	-168(%rbp), %eax
	movslq	%eax, %rcx
	movl	-164(%rbp), %eax
	cltq
	addq	%rcx, %rax
	addq	%rdx, %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtol@PLT
	movq	%rax, -56(%rbp)
	addq	$8, -208(%rbp)
	subl	$1, -196(%rbp)
	jmp	.L69
.L97:
	movq	-40(%rbp), %rax
	movl	$2, %edx
	leaq	.LC51(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L105
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L106
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movl	$2, %edx
	movq	%rax, %rsi
	leaq	.LC52(%rip), %rax
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L106
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtol@PLT
	movq	%rax, -72(%rbp)
	jmp	.L69
.L106:
	movq	-208(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L108
	call	exit_with_usage
.L108:
	movq	-208(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtol@PLT
	movq	%rax, -72(%rbp)
	addq	$8, -208(%rbp)
	subl	$1, -196(%rbp)
	jmp	.L69
.L105:
	movq	-40(%rbp), %rax
	movl	$2, %edx
	leaq	.LC53(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L109
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L110
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movl	$3, %edx
	movq	%rax, %rsi
	leaq	.LC54(%rip), %rax
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L110
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -32(%rbp)
	jmp	.L69
.L110:
	movq	-208(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L112
	call	exit_with_usage
.L112:
	movq	-208(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	addq	$8, -208(%rbp)
	subl	$1, -196(%rbp)
	jmp	.L69
.L109:
	movq	-40(%rbp), %rax
	leaq	.LC28(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L113
	addq	$8, -208(%rbp)
	subl	$1, -196(%rbp)
	jmp	.L114
.L113:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L114
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L114
	call	exit_with_usage
.L69:
	addq	$8, -208(%rbp)
	subl	$1, -196(%rbp)
.L65:
	cmpl	$1, -196(%rbp)
	jg	.L115
.L114:
	cmpl	$0, -152(%rbp)
	je	.L116
	cmpl	$0, -156(%rbp)
	jne	.L117
	cmpl	$1, -140(%rbp)
	je	.L117
.L116:
	cmpl	$3, -140(%rbp)
	je	.L118
	cmpl	$3, -140(%rbp)
	jg	.L119
	cmpl	$1, -140(%rbp)
	je	.L120
	cmpl	$2, -140(%rbp)
	je	.L121
	jmp	.L119
.L120:
	movl	$30, -156(%rbp)
	jmp	.L117
.L121:
	movl	$12, -156(%rbp)
	jmp	.L117
.L118:
	movl	$6, -156(%rbp)
	jmp	.L117
.L119:
	movl	$16, -156(%rbp)
	nop
.L117:
	cmpl	$0, -124(%rbp)
	jns	.L122
	cmpl	$4, -140(%rbp)
	je	.L123
	cmpl	$4, -140(%rbp)
	jg	.L124
	cmpl	$0, -140(%rbp)
	je	.L125
	cmpl	$3, -140(%rbp)
	jne	.L124
	movl	$1, -124(%rbp)
	jmp	.L122
.L125:
	movl	$2, -124(%rbp)
	jmp	.L122
.L123:
	movl	$4, -124(%rbp)
	jmp	.L122
.L124:
	movl	$0, -124(%rbp)
	nop
.L122:
	cmpl	$1, -140(%rbp)
	jne	.L126
	cmpl	$0, -156(%rbp)
	js	.L127
.L126:
	cmpl	$1, -140(%rbp)
	je	.L128
	cmpl	$0, -156(%rbp)
	jle	.L127
.L128:
	cmpl	$0, -140(%rbp)
	je	.L129
	cmpl	$3, -140(%rbp)
	je	.L129
	cmpl	$4, -140(%rbp)
	jne	.L130
.L129:
	cmpl	$256, -156(%rbp)
	jle	.L130
.L127:
	movq	pname(%rip), %rdx
	movq	stderr(%rip), %rax
	movl	$256, %ecx
	leaq	.LC55(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$1, %edi
	call	exit@PLT
.L130:
	cmpl	$0, -124(%rbp)
	jle	.L131
	movl	-124(%rbp), %eax
	cmpl	-156(%rbp), %eax
	jle	.L132
.L131:
	movl	-156(%rbp), %eax
	movl	%eax, -124(%rbp)
	jmp	.L133
.L132:
	cmpl	$4, -140(%rbp)
	jne	.L133
	movl	-124(%rbp), %eax
	subl	$1, %eax
	andl	-124(%rbp), %eax
	testl	%eax, %eax
	je	.L133
	leaq	.LC56(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	error_exit
.L133:
	cmpl	$3, -196(%rbp)
	jle	.L134
	call	exit_with_usage
.L134:
	cmpl	$1, -196(%rbp)
	je	.L135
	movq	-208(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L136
	movq	-208(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L136
.L135:
	movq	stdin(%rip), %rax
	movq	%rax, -88(%rbp)
	jmp	.L137
.L136:
	movq	-208(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC57(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L137
	movq	pname(%rip), %rdx
	movq	stderr(%rip), %rax
	leaq	.LC24(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-208(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	perror@PLT
	movl	$2, %eax
	jmp	.L138
.L137:
	cmpl	$2, -196(%rbp)
	jle	.L139
	movq	-208(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L140
	movq	-208(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L140
.L139:
	movq	stdout(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L141
.L140:
	cmpl	$0, -160(%rbp)
	je	.L142
	movl	$1, %eax
	jmp	.L143
.L142:
	movl	$513, %eax
.L143:
	movl	%eax, -100(%rbp)
	movl	-100(%rbp), %eax
	orl	$64, %eax
	movl	%eax, %ecx
	movq	-208(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movl	$438, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	open@PLT
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	js	.L144
	movl	-96(%rbp), %eax
	leaq	.LC58(%rip), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fdopen@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L145
.L144:
	movq	pname(%rip), %rdx
	movq	stderr(%rip), %rax
	leaq	.LC24(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-208(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	perror@PLT
	movl	$3, %eax
	jmp	.L138
.L145:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	rewind@PLT
.L141:
	cmpl	$0, -160(%rbp)
	je	.L146
	cmpl	$0, -140(%rbp)
	je	.L147
	cmpl	$1, -140(%rbp)
	je	.L147
	leaq	.LC59(%rip), %rax
	movq	%rax, %rsi
	movl	$-1, %edi
	call	error_exit
.L147:
	cmpl	$0, -164(%rbp)
	je	.L148
	movq	-56(%rbp), %rax
	negq	%rax
	jmp	.L149
.L148:
	movq	-56(%rbp), %rax
.L149:
	movl	-140(%rbp), %ecx
	movl	-156(%rbp), %edx
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdi
	movq	%rax, %r8
	call	huntype
	jmp	.L138
.L146:
	cmpq	$0, -56(%rbp)
	jne	.L150
	cmpl	$0, -164(%rbp)
	jne	.L150
	cmpl	$0, -168(%rbp)
	jne	.L151
.L150:
	cmpl	$0, -168(%rbp)
	je	.L152
	cmpl	$0, -164(%rbp)
	je	.L153
	movq	-56(%rbp), %rax
	negq	%rax
	jmp	.L154
.L153:
	movq	-56(%rbp), %rax
.L154:
	movq	-88(%rbp), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	fseek@PLT
	movl	%eax, -176(%rbp)
	jmp	.L155
.L152:
	cmpl	$0, -164(%rbp)
	je	.L156
	movl	$2, %edx
	jmp	.L157
.L156:
	movl	$0, %edx
.L157:
	cmpl	$0, -164(%rbp)
	je	.L158
	movq	-56(%rbp), %rax
	negq	%rax
	jmp	.L159
.L158:
	movq	-56(%rbp), %rax
.L159:
	movq	-88(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	fseek@PLT
	movl	%eax, -176(%rbp)
.L155:
	cmpl	$0, -176(%rbp)
	jns	.L160
	cmpl	$0, -164(%rbp)
	je	.L160
	leaq	.LC60(%rip), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	error_exit
.L160:
	cmpl	$0, -176(%rbp)
	js	.L161
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ftell@PLT
	movq	%rax, -56(%rbp)
	jmp	.L151
.L161:
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L162
.L163:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	getc_or_die
	cmpl	$-1, %eax
	jne	.L162
	leaq	.LC60(%rip), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	error_exit
.L162:
	movq	-24(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	testq	%rax, %rax
	jne	.L163
.L151:
	cmpl	$2, -140(%rbp)
	jne	.L164
	cmpq	$0, -32(%rbp)
	jne	.L165
	movq	stdin(%rip), %rax
	cmpq	%rax, -88(%rbp)
	je	.L165
	movq	-208(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
.L165:
	cmpq	$0, -32(%rbp)
	je	.L166
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L167
	leaq	.LC61(%rip), %rax
	jmp	.L168
.L167:
	leaq	.LC62(%rip), %rax
.L168:
	movq	-80(%rbp), %rcx
	movq	%rax, %rdx
	leaq	.LC63(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	testl	%eax, %eax
	jns	.L169
	movl	$3, %edi
	call	perror_exit
.L169:
	movl	$0, -176(%rbp)
	jmp	.L170
.L175:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movl	-180(%rbp), %eax
	cltq
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L171
	cmpl	$0, -136(%rbp)
	je	.L172
	movl	-180(%rbp), %eax
	movl	%eax, %edi
	call	toupper@PLT
	jmp	.L174
.L172:
	movl	-180(%rbp), %eax
	jmp	.L174
.L171:
	movl	$95, %eax
.L174:
	movq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	putc_or_die
	addl	$1, -176(%rbp)
.L170:
	movl	-176(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -180(%rbp)
	cmpl	$0, -180(%rbp)
	jne	.L175
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC64(%rip), %rax
	movq	%rax, %rdi
	call	fputs_or_die
.L166:
	movl	$0, -172(%rbp)
	jmp	.L176
.L186:
	movl	-172(%rbp), %eax
	cltd
	idivl	-156(%rbp)
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L177
	cmpl	$0, -172(%rbp)
	jne	.L178
	leaq	.LC65(%rip), %rax
	jmp	.L180
.L178:
	leaq	.LC66(%rip), %rax
	jmp	.L180
.L177:
	leaq	.LC67(%rip), %rax
.L180:
	movq	hexx(%rip), %rdx
	leaq	hexxa(%rip), %rcx
	cmpq	%rcx, %rdx
	jne	.L181
	leaq	.LC68(%rip), %rsi
	jmp	.L182
.L181:
	leaq	.LC69(%rip), %rsi
.L182:
	movl	-180(%rbp), %edx
	movq	-80(%rbp), %rdi
	movl	%edx, %ecx
	movq	%rax, %rdx
	movl	$0, %eax
	call	fprintf@PLT
	testl	%eax, %eax
	jns	.L183
	movl	$3, %edi
	call	perror_exit
.L183:
	addl	$1, -172(%rbp)
.L176:
	cmpq	$0, -72(%rbp)
	js	.L184
	movl	-172(%rbp), %eax
	cltq
	cmpq	%rax, -72(%rbp)
	jle	.L185
.L184:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	getc_or_die
	movl	%eax, -180(%rbp)
	cmpl	$-1, -180(%rbp)
	jne	.L186
.L185:
	cmpl	$0, -172(%rbp)
	je	.L187
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC70(%rip), %rax
	movq	%rax, %rdi
	call	fputs_or_die
.L187:
	cmpq	$0, -32(%rbp)
	je	.L188
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC71(%rip), %rax
	movq	%rax, %rdi
	call	fputs_or_die
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L189
	leaq	.LC61(%rip), %rax
	jmp	.L190
.L189:
	leaq	.LC62(%rip), %rax
.L190:
	movq	-80(%rbp), %rcx
	movq	%rax, %rdx
	leaq	.LC72(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	testl	%eax, %eax
	jns	.L191
	movl	$3, %edi
	call	perror_exit
.L191:
	movl	$0, -176(%rbp)
	jmp	.L192
.L197:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movl	-180(%rbp), %eax
	cltq
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L193
	cmpl	$0, -136(%rbp)
	je	.L194
	movl	-180(%rbp), %eax
	movl	%eax, %edi
	call	toupper@PLT
	jmp	.L196
.L194:
	movl	-180(%rbp), %eax
	jmp	.L196
.L193:
	movl	$95, %eax
.L196:
	movq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	putc_or_die
	addl	$1, -176(%rbp)
.L192:
	movl	-176(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -180(%rbp)
	cmpl	$0, -180(%rbp)
	jne	.L197
	cmpl	$0, -136(%rbp)
	je	.L198
	leaq	.LC73(%rip), %rax
	jmp	.L199
.L198:
	leaq	.LC74(%rip), %rax
.L199:
	movl	-172(%rbp), %edx
	movq	-80(%rbp), %rdi
	movl	%edx, %ecx
	movq	%rax, %rdx
	leaq	.LC75(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	fprintf@PLT
	testl	%eax, %eax
	jns	.L188
	movl	$3, %edi
	call	perror_exit
.L188:
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fclose_or_die
	movl	$0, %eax
	jmp	.L138
.L164:
	cmpl	$1, -140(%rbp)
	jne	.L200
	movl	-156(%rbp), %eax
	movl	%eax, -172(%rbp)
	jmp	.L201
.L204:
	movq	hexx(%rip), %rdx
	movl	-176(%rbp), %eax
	sarl	$4, %eax
	cltq
	andl	$15, %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	putc_or_die
	movq	hexx(%rip), %rdx
	movl	-176(%rbp), %eax
	cltq
	andl	$15, %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	putc_or_die
	addq	$1, -64(%rbp)
	cmpl	$0, -156(%rbp)
	jle	.L201
	subl	$1, -172(%rbp)
	cmpl	$0, -172(%rbp)
	jne	.L201
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	putc_or_die
	movl	-156(%rbp), %eax
	movl	%eax, -172(%rbp)
.L201:
	cmpq	$0, -72(%rbp)
	js	.L202
	movq	-64(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jge	.L203
.L202:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	getc_or_die
	movl	%eax, -176(%rbp)
	cmpl	$-1, -176(%rbp)
	jne	.L204
.L203:
	cmpl	$0, -156(%rbp)
	je	.L205
	movl	-172(%rbp), %eax
	cmpl	-156(%rbp), %eax
	jge	.L206
.L205:
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	putc_or_die
.L206:
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fclose_or_die
	movl	$0, %eax
	jmp	.L138
.L200:
	cmpl	$3, -140(%rbp)
	je	.L207
	movl	-124(%rbp), %eax
	addl	%eax, %eax
	addl	$1, %eax
	movl	%eax, -120(%rbp)
	jmp	.L209
.L207:
	movl	-124(%rbp), %eax
	sall	$3, %eax
	addl	$1, %eax
	movl	%eax, -120(%rbp)
	jmp	.L209
.L236:
	cmpl	$0, -172(%rbp)
	jne	.L210
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	cmpl	$0, -132(%rbp)
	je	.L211
	leaq	.LC76(%rip), %rax
	jmp	.L212
.L211:
	leaq	.LC77(%rip), %rax
.L212:
	movq	%rax, %rsi
	leaq	l.0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	movl	%eax, -116(%rbp)
	movl	-116(%rbp), %eax
	movl	%eax, -180(%rbp)
	jmp	.L213
.L214:
	movl	-180(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -180(%rbp)
	cltq
	leaq	l.0(%rip), %rdx
	movb	$32, (%rax,%rdx)
.L213:
	cmpl	$2580, -180(%rbp)
	jle	.L214
.L210:
	cmpl	$4, -140(%rbp)
	jne	.L215
	movl	-124(%rbp), %eax
	subl	$1, %eax
	xorl	-172(%rbp), %eax
	jmp	.L216
.L215:
	movl	-172(%rbp), %eax
.L216:
	movl	%eax, -92(%rbp)
	movl	-116(%rbp), %eax
	leal	1(%rax), %ecx
	movl	-120(%rbp), %eax
	imull	-92(%rbp), %eax
	cltd
	idivl	-124(%rbp)
	addl	%ecx, %eax
	movl	%eax, -180(%rbp)
	cmpl	$0, -140(%rbp)
	je	.L217
	cmpl	$4, -140(%rbp)
	jne	.L218
.L217:
	movq	hexx(%rip), %rdx
	movl	-176(%rbp), %eax
	sarl	$4, %eax
	cltq
	andl	$15, %eax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-180(%rbp), %eax
	cltq
	leaq	l.0(%rip), %rcx
	movb	%dl, (%rax,%rcx)
	movq	hexx(%rip), %rdx
	movl	-176(%rbp), %eax
	cltq
	andl	$15, %eax
	addq	%rdx, %rax
	addl	$1, -180(%rbp)
	movzbl	(%rax), %edx
	movl	-180(%rbp), %eax
	cltq
	leaq	l.0(%rip), %rcx
	movb	%dl, (%rax,%rcx)
	jmp	.L219
.L218:
	movl	$7, -104(%rbp)
	jmp	.L220
.L223:
	movl	-104(%rbp), %eax
	movl	-176(%rbp), %edx
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L221
	movl	$49, %ecx
	jmp	.L222
.L221:
	movl	$48, %ecx
.L222:
	movl	-180(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -180(%rbp)
	cltq
	leaq	l.0(%rip), %rdx
	movb	%cl, (%rax,%rdx)
	subl	$1, -104(%rbp)
.L220:
	cmpl	$0, -104(%rbp)
	jns	.L223
.L219:
	cmpl	$0, -176(%rbp)
	je	.L224
	addl	$1, -148(%rbp)
.L224:
	cmpl	$0, -128(%rbp)
	je	.L225
	cmpl	$63, -176(%rbp)
	jle	.L226
	movl	-176(%rbp), %eax
	subl	$64, %eax
	cltq
	leaq	etoa64(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %eax
	jmp	.L227
.L226:
	movl	$46, %eax
.L227:
	movl	%eax, -176(%rbp)
.L225:
	cmpl	$4, -140(%rbp)
	jne	.L228
	movl	-156(%rbp), %edx
	movl	-124(%rbp), %eax
	addl	%edx, %eax
	subl	$1, %eax
	cltd
	idivl	-124(%rbp)
	movl	%eax, %edx
	movl	-120(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, -180(%rbp)
	jmp	.L229
.L228:
	movl	-120(%rbp), %eax
	imull	-156(%rbp), %eax
	subl	$1, %eax
	cltd
	idivl	-124(%rbp)
	movl	%eax, -180(%rbp)
.L229:
	movl	-116(%rbp), %eax
	leal	3(%rax), %edx
	movl	-172(%rbp), %eax
	addl	%edx, %eax
	addl	%eax, -180(%rbp)
	cmpl	$31, -176(%rbp)
	jle	.L230
	cmpl	$126, -176(%rbp)
	jg	.L230
	movl	-176(%rbp), %eax
	movl	%eax, %ecx
	jmp	.L231
.L230:
	movl	$46, %ecx
.L231:
	movl	-180(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -180(%rbp)
	cltq
	leaq	l.0(%rip), %rdx
	movb	%cl, (%rax,%rdx)
	addq	$1, -64(%rbp)
	addl	$1, -172(%rbp)
	movl	-172(%rbp), %eax
	cmpl	-156(%rbp), %eax
	jne	.L209
	movl	-180(%rbp), %eax
	cltq
	leaq	l.0(%rip), %rdx
	movb	$10, (%rax,%rdx)
	addl	$1, -180(%rbp)
	movl	-180(%rbp), %eax
	cltq
	leaq	l.0(%rip), %rdx
	movb	$0, (%rax,%rdx)
	cmpl	$0, -144(%rbp)
	je	.L232
	movl	-148(%rbp), %eax
	jmp	.L233
.L232:
	movl	$1, %eax
.L233:
	movq	-80(%rbp), %rcx
	movl	%eax, %edx
	leaq	l.0(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	xxdline
	movl	$0, -148(%rbp)
	movl	$0, -172(%rbp)
.L209:
	cmpq	$0, -72(%rbp)
	js	.L234
	movq	-64(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jge	.L235
.L234:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	getc_or_die
	movl	%eax, -176(%rbp)
	cmpl	$-1, -176(%rbp)
	jne	.L236
.L235:
	cmpl	$0, -172(%rbp)
	je	.L237
	movl	-180(%rbp), %eax
	cltq
	leaq	l.0(%rip), %rdx
	movb	$10, (%rax,%rdx)
	addl	$1, -180(%rbp)
	movl	-180(%rbp), %eax
	cltq
	leaq	l.0(%rip), %rdx
	movb	$0, (%rax,%rdx)
	movq	-80(%rbp), %rax
	movl	$1, %edx
	leaq	l.0(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	xxdline
	jmp	.L238
.L237:
	cmpl	$0, -144(%rbp)
	je	.L238
	movq	-80(%rbp), %rax
	movl	$-1, %edx
	leaq	l.0(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	xxdline
.L238:
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fclose_or_die
	movl	$0, %eax
.L138:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.local	zero_seen.2
	.comm	zero_seen.2,4,4
	.local	z.1
	.comm	z.1,2582,32
	.local	l.0
	.comm	l.0,2582,32
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:

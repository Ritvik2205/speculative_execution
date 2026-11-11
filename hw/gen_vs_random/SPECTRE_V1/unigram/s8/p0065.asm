.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
add cl, 112 # instrumentation
sbb ebx, 31
add cl, 86 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rcx]
add cl, 115 # instrumentation
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], ecx
adc bl, cl
sub sil, sil
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], ax
add di, 44
or di, 0b1000000000000000 # instrumentation
bsf ax, di
js .bb_0.1
jmp .exit_0
.bb_0.1:
inc si
cmovl bx, dx
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rdx], di
mul dl
add sil, sil
cmovs cx, ax
and rdx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

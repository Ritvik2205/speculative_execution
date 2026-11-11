.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rbx]
and bl, dil
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
sub rcx, -121
xor sil, bl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], -119
add eax, 871834813
sbb cl, bl
and rax, 1994547909
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

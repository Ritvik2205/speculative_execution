.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rbx]
inc rdx
add dx, -90
and bl, -65
cmovno bx, ax
lea ebx, qword ptr [rax]
and rdx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rcx
lea rbx, qword ptr [rcx + rax + 86]
lea si, qword ptr [rcx]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], sil
sub cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

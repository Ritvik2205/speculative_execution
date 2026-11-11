.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdi]
cwde
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
and rax, 1994547909
xor cl, dil
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rbx]
sbb al, -50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

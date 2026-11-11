.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -104 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
xor di, 99
and al, dil
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
xor al, dil
sbb dl, dil
xor cl, 89
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
add ecx, 66
jl .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

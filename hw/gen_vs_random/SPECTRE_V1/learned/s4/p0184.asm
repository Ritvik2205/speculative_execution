.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rax]
lea ax, qword ptr [rax]
add bl, -95
add bl, 70
cmp bl, dl
mov sil, cl
and bl, sil
xor dil, cl
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rax]
sub dil, sil
lea rcx, qword ptr [rsi + rdi + 45]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -109
mov dil, sil
and bl, -43
and rcx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rbx]
not dl
lea esi, qword ptr [rax]
cmovno di, dx
sbb dil, -106
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

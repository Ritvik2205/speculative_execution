.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
and al, sil
or bl, dl
and rax, -731384280
and rbx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rbx]
and si, -121
and bl, 68
and rdi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdi]
xor al, 9
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -93 # instrumentation
xchg rbx, rax
lea rsi, qword ptr [rdx + rcx]
lea rax, qword ptr [rax + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdi]
and eax, 1167476476
and rdi, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rdi]
and dl, -98
sbb rax, 717206440
add bl, -58 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rsi]
and si, bx
lea bx, qword ptr [rdx]
and rcx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rcx]
sbb cl, 83
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

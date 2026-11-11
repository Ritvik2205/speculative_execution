.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -37
add dl, sil
lea di, qword ptr [rbx + rdi + 23]
and rdx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdx]
lea ebx, qword ptr [rdx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rsi], bx
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rax
setno bl
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], 15
add bl, -5 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
add al, 120 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

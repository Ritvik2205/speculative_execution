.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and rdx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdx]
and cl, dil
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
test edx, -1561252782
or dil, -78
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dl
test di, 20
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -884248205
cmovnp rcx, rax
and rsi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
test dl, sil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

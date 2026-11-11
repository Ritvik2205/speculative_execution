.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt edi, esi
cbw
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -19
cmovnbe eax, edi
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], cl
and rax, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
add si, 6
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnp rbx, rax
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rax], di
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 18
lea dx, qword ptr [rsi + rax]
or dl, 56
and rsi, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rsi]
cmovno rax, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp bx, ax
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 913863268
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], 57
add bl, 6 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 31
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
sbb cl, cl
adc di, cx
lea esi, qword ptr [rsi + rdi]
and rdi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 5
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], rdx
bswap rsi
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
sbb dil, sil
add dil, -61 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

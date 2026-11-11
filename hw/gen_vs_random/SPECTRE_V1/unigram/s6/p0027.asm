.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add eax, 1938514106
imul si, cx, 85
add al, -14 # instrumentation
lea di, qword ptr [rdx + rcx]
add cl, -55 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rcx]
or bl, 23
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 95
add dil, 126 # instrumentation
cmovnl cx, di
and bl, -65
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
lea esi, qword ptr [rcx + rcx + 71]
and rsi, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rsi]
xor cl, cl
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rdi
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], sil
and rsi, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

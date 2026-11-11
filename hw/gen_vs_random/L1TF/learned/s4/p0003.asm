.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 106
imul al
test sil, 29
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 48
xor rcx, rsi
xor cl, dl
and rsi, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rsi]
and cl, dl
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

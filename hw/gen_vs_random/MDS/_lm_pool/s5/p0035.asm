.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ax, bx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 26
test dl, 9
bt ax, dx
or al, 74
and dil, sil
and cl, -111
xor cx, -18
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and edi, 23
or bl, dl
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and si, -121
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

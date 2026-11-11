.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, al
jmp .bb_0.1
.bb_0.1:
or sil, al
xor cl, 98
test bl, dl
xor al, cl
jmp .bb_0.2
.bb_0.2:
and ecx, -104
btc dx, 67
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
not dil
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
bt dx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

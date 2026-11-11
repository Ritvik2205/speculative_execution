.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, al
test esi, 1857129931
btr cx, dx
and al, cl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -55
xor sil, -14
not cl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
btr cx, di
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and al, 75
xor rax, -91
or di, 79
btc eax, 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

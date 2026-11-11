.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and bl, dl
or al, -75
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
test cl, -123
bt edx, ebx
xor sil, -46
xor rdx, -59
and si, -121
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
or rax, -1561934807
test esi, 1857129931
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 27170
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
jmp .bb_0.1
.bb_0.1:
xor ax, -4010
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
and al, 35
or edx, esi
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
xor bx, 52
and bl, dil
xor cx, -18
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
xor rdi, -9
test rax, -648054011
xor sil, 110
and al, 106
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], ebx
xor rsi, -117
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
and al, 84
and al, -103
xor cl, 98
xor al, dl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
test bl, cl
xor dil, 124
bt cx, di
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

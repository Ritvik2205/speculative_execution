.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -8
and ax, 339
test al, dl
test al, -81
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
xor al, 115
xor dil, -70
xor rdx, -59
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
and al, cl
xor ax, -4010
xor rsi, -117
and rax, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

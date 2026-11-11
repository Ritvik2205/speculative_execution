.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, ebx
and esi, 72
xor rax, -345061362
test al, -81
xor al, dl
test rax, -708244380
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
xor rax, -1657511731
xor cx, -18
and ax, 31082
or al, -61
and ax, 13090
and sil, 74
xor dil, -124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

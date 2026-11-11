.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 106
and rdx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdi]
or cl, -78
or al, cl
add dl, sil
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
jmp .bb_0.1
.bb_0.1:
test dil, -126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
and dx, 82
or al, 100
and rcx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rcx], 19
and rsi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], cl
add si, 14
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
bt eax, 78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

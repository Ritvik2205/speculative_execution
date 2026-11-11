.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
or al, -57
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
or rdi, 26
add sil, -61
sbb ebx, -116
lea cx, qword ptr [rdi]
lea ax, qword ptr [rdx + rsi]
cmp sil, -11
and bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

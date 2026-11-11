.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 88
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
sub bl, -19
cmovle rcx, rax
and bl, cl
sub bl, -19
and rbx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rbx], 14
and rsi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

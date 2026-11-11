.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, cl
imul al
sbb bl, cl
and rbx, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
cmovns rdi, rbx
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

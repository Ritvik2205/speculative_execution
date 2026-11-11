.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, edx
adc al, -61
and rdi, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rdi]
xor cl, 89
and rbx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rbx]
sbb al, 61
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

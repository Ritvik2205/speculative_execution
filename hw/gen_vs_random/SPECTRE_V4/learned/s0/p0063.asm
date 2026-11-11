.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
cmp al, -44
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
xchg rbx, rax
cmovno bx, di
adc ecx, 55
adc bl, al
and cl, 32
or al, 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

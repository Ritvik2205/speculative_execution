.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
sbb bl, -41
xor rdx, 12
xor al, dl
sbb eax, -108
adc dx, -112
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
dec al
cmovnle rax, rbx
jmp .bb_0.1
.bb_0.1:
lea rcx, qword ptr [rbx + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

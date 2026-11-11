.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
adc bl, 88
and dil, 98
sbb dil, dil
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rax]
sub dl, 96
and cl, bl
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

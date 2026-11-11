.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, cl
xchg edi, ebx
lea rdi, qword ptr [rax]
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and dil, dl
lea si, qword ptr [rcx + rdx]
add dl, 47
xchg esi, edx
adc cl, dl
sbb bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

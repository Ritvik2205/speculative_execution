.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -57 # instrumentation
cmovo rax, rsi
and rdx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea bx, qword ptr [rcx + rdi + 43]
sub al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

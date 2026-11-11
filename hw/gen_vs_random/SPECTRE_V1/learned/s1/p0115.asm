.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 59
xor cl, -40
test dl, 113
and rdx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], edx
sub al, bl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
or edx, 39
and al, cl
inc edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

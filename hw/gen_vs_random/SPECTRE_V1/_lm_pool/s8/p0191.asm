.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 12 # instrumentation
cmovnb edi, eax
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 8
sbb al, 118
jp .bb_0.1
jmp .exit_0
.bb_0.1:
or al, 19
lea rcx, qword ptr [rbx + rax + 55]
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 67
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edx
cmp di, 52
test eax, 88788211
lea rsi, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

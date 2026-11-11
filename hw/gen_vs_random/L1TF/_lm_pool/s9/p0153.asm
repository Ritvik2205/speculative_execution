.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 21 # instrumentation
adc si, 39
and bx, 66
sbb dil, bl
and rdx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
adc ax, ax
xor bx, 59
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1
jmp .bb_0.2
.bb_0.2:
or al, -57
cmp cl, -89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

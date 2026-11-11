.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rsi]
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], ax
inc rax
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
test dl, 113
add bl, dil
cmp dl, dil
js .bb_0.2
jmp .exit_0
.bb_0.2:
sbb dl, cl
sbb cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

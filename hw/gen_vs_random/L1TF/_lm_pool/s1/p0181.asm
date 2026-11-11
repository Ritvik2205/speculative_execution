.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
lea ax, qword ptr [rax]
add sil, -61
inc rax
test cl, 40
add dl, 125
jmp .bb_0.1
.bb_0.1:
and dil, 58
jmp .bb_0.2
.bb_0.2:
add bl, 89 # instrumentation
sbb dl, dil
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], 77
adc dl, -12
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
cmp dx, 67
and rax, 1163013815
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

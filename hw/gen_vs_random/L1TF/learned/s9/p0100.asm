.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, cl
lea eax, qword ptr [rdi]
test dl, cl
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 56
jmp .bb_0.1
.bb_0.1:
add ax, 23614
and al, dil
jmp .bb_0.2
.bb_0.2:
cbw
jmp .bb_0.3
.bb_0.3:
add al, 104 # instrumentation
sbb rax, 1890168613
cmp dil, 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

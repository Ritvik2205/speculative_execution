.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 26813
or al, -57
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 66
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 71
sub bl, 15
jmp .bb_0.2
.bb_0.2:
add dl, -52 # instrumentation
adc bx, 45
lea dx, qword ptr [rdx + rcx]
test al, -82
jmp .bb_0.3
.bb_0.3:
btc ax, si
lea rbx, qword ptr [rax + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

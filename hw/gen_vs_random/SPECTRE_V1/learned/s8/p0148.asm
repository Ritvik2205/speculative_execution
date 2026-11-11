.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rdx]
add al, -72
sub rsi, 97
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 78
add bl, bl
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdx]
test al, 34
add bl, 70
test al, 40
add al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

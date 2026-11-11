.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 12 # instrumentation
cmovnb ebx, edx
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
add rbx, 99
cmp cx, 75
cmp bl, cl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
lea dx, qword ptr [rsi + rax + 89]
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rcx]
lea di, qword ptr [rax + rdx + 38]
jmp .bb_0.4
.bb_0.4:
imul bx, dx
sub dl, 41
or si, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

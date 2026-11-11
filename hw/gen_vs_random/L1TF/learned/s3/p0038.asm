.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rdx]
xchg ebx, edi
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rdx + rax + 76]
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
jmp .bb_0.3
.bb_0.3:
sub cl, dil
mov dl, dil
cmp dx, 85
cmp cl, -89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdx]
sbb dl, -26
bts edi, 9
add ax, 23614
test cl, 18
lea dx, qword ptr [rbx + rcx + 21]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rsi]
cmp rdi, 78
sbb bl, dil
mul al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

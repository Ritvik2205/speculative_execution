.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 80 # instrumentation
sbb dil, dil
and rsi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
test cl, 12
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rcx]
jmp .bb_0.3
.bb_0.3:
cmp cl, cl
lea ax, qword ptr [rbx + rcx + 43]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
xor dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

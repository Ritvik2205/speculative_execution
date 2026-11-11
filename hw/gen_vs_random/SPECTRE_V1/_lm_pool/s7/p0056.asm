.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
cmp al, bl
cmp al, sil
and rcx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
lea dx, qword ptr [rsi + rax + 12]
js .bb_0.1
jmp .exit_0
.bb_0.1:
xor al, 78
and rcx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rcx]
test cl, -120
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

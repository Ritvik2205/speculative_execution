.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -67
xor bx, ax
test al, -32
sbb bl, dil
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
xor cl, dil
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dil
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
lea di, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rcx]
test cl, 54
and sil, cl
and al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
sub al, 63
test al, 34
sbb bl, 79
and dl, sil
and rax, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rax]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
sub dil, -111
cmp bx, 68
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], al
mov al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

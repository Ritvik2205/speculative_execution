.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 15
and rsi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rsi]
sbb al, dil
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rcx]
and rax, -109
sub cx, 59
jmp .bb_0.1
.bb_0.1:
test al, -104
sub dl, 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

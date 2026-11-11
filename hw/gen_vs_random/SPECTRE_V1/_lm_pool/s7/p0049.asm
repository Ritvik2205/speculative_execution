.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rcx]
mov dl, cl
setno cl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], dx
sub dl, bl
jmp .bb_0.1
.bb_0.1:
not cx
sub dil, -111
cmp esi, 94
jmp .bb_0.2
.bb_0.2:
or al, bl
xor cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

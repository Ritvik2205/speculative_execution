.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rcx]
sub dl, -12
and rsi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rsi]
mov dil, bl
movsx rax, cx
jno .bb_0.1
jmp .exit_0
.bb_0.1:
add edx, 86
lea ax, qword ptr [rcx]
add bx, -65
xor cl, al
setns al
or dx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

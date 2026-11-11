.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx esi, dx
and rdx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rax]
test al, -99
or cx, 43
cmp al, 23
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
sub rax, -1628299544
add dl, 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

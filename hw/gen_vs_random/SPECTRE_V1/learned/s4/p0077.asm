.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -103 # instrumentation
cmovbe bx, bx
xchg ecx, esi
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx], 58
sub dl, bl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
test bl, -8
or eax, -1161451853
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

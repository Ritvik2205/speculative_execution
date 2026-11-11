.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
sub cl, -47
sub bl, -19
xchg rax, rdx
lea rdx, qword ptr [rbx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 913863268
sub rax, -1628299544
jns .bb_0.1
jmp .exit_0
.bb_0.1:
sbb eax, 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

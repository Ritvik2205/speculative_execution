.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rcx]
and ax, 37
and rcx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
sbb bl, dil
cmovs cx, bx
cmovb di, dx
add dl, dil
lea ecx, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdx]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, esi
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 112
xor cl, sil
setns cl
jmp .bb_0.1
.bb_0.1:
lea bx, qword ptr [rax + rbx + 29]
jmp .bb_0.2
.bb_0.2:
test sil, 29
sbb rsi, 32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

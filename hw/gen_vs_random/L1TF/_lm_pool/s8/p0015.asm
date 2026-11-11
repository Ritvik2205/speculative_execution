.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -70
sub bl, -96
and rcx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rcx]
test bl, 84
sbb al, 61
xor al, cl
sbb sil, cl
sbb al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

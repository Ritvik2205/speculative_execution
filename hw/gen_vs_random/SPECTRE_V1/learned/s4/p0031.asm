.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, bl
xor sil, sil
sbb dil, -93
jmp .bb_0.1
.bb_0.1:
sub cl, dil
xchg ebx, esi
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
sbb sil, bl
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rcx]
xor cl, cl
and sil, -84
and bl, -119
test al, -26
cmp dil, al
sbb al, -52
sbb al, -3
dec sil
xchg ebx, ecx
sub al, 54
xor dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

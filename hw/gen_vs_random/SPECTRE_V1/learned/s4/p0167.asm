.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
sub al, dil
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 88
jmp .bb_0.1
.bb_0.1:
test al, 84
sub rdx, 69
sbb bl, bl
sub dl, bl
sbb al, bl
and dl, -92
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
lea si, qword ptr [rdx]
lea rax, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

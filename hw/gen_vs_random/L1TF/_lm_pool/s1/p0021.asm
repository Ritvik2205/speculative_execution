.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -126
cmp al, dl
and rcx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
sub dil, -70
and cl, dl
and dl, bl
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 14
sbb dil, 53
test bl, 84
xor al, 16
lea rax, qword ptr [rcx]
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

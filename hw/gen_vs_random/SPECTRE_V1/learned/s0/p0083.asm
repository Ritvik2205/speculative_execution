.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -36 # instrumentation
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], edx
and rcx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rcx]
xor al, dil
test dil, al
mov cl, al
and rcx, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rcx]
sbb sil, dil
neg dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

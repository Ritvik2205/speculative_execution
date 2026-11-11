.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rbx, -91
test bl, -91
and al, 41
add dil, al
and sil, -84
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
sbb cl, -69
xor dl, dil
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 53
and bl, dil
sbb bl, -75
cmovz ebx, eax
add dl, 109
sub al, dl
and rcx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rcx]
dec dl
test dl, -125
test al, -38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

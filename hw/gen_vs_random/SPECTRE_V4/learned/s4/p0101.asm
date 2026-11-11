.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -19
test cl, dil
sub bl, -89
cmp al, -78
and dil, bl
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
sub al, -84
sub al, -128
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edi
cmp bl, dil
and rbx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rbx]
bts bx, 102
xor rcx, -111
sub sil, 71
sub al, 63
and dl, 24
sbb al, cl
mov bl, cl
xor cl, sil
xchg ecx, edi
sbb sil, dl
and rax, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rax]
or eax, 1470564945
test dil, sil
or al, sil
and cl, dil
sub al, 54
and dil, dil
xor dl, -123
cmp al, 116
xor bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

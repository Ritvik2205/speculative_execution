.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor di, 18
cmp eax, 89
sbb al, 31
cmp al, dil
cmp edx, -95
sbb dl, cl
cmovno rbx, rcx
or dl, bl
xor al, sil
or dl, 71
and sil, dil
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
or rax, -823069511
and rax, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rax]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edx
sub sil, 71
test dl, bl
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and cl, al
and bl, -30
xor ax, -29507
xchg esi, ecx
or bl, -35
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
sub dl, cl
sbb al, 95
sub rcx, -74
sub al, 127
and dl, 24
mov cl, -38
and al, -28
xor al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 114
adc al, dil
cmovz ebx, edi
xchg rbx, rcx
cmp cl, al
or al, -83
and rax, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rax]
adc al, -117
adc dl, dil
or cl, cl
sub al, 11
sbb dl, -62
test al, 27
test cl, -31
sub bl, al
and sil, dil
cmp dil, -92
sub dil, 35
add cl, -9
cmp rax, -1070057082
mov bl, -69
mov dl, bl
cmp esi, -84
adc ebx, -100
and al, 100
inc dil
neg rcx
sub ecx, -107
or al, -90
btc rsi, rdx
sbb dil, al
add dl, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

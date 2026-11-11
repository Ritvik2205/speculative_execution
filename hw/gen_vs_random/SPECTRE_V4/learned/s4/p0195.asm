.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, -73
sbb dil, 54
and sil, -84
neg rdi
sub bl, al
add bl, cl
mov dil, dl
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
test bl, 110
sub esi, -69
test sil, 1
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 5
sbb al, -39
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
sbb bl, -75
cmovl rsi, rcx
sbb si, 37
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ecx
adc sil, dl
xor al, -113
cmp bl, -16
cmovno edi, esi
and rdx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdx]
sub dl, sil
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dil
or ax, -29521
mov bl, al
adc sil, dil
sub cl, dl
sbb sil, -124
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], al
and rsi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, dil
sub bx, si
test dl, bl
xor rsi, rdx
sub cl, sil
add dl, al
sbb ecx, 67
test cl, -10
and cl, -101
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
bts bx, 42
and eax, -1572488789
xor bl, dil
cmp al, -78
or al, -50
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
test ax, 21107
cmp dil, 101
sub al, 0
xchg rax, rcx
sbb al, 31
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
cmp al, 114
cmp cl, -80
dec sil
adc bl, dl
or al, -88
sbb dil, 92
xor sil, bl
sbb cl, al
adc al, -117
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

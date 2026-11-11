.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, -128
or bl, al
and dil, sil
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], sil
dec dl
xor dil, -23
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 7
bts dx, 96
xor cl, 88
sub dl, 107
adc dl, 35
and rbx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rbx]
test cl, -119
xchg ebx, ecx
cmp dil, cl
sub sil, 71
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
adc dl, 89
sbb cl, 127
and dil, dil
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
xor si, -73
cmp dil, -92
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
test dil, -26
or ecx, 102
adc dl, dil
add bl, dl
sbb bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

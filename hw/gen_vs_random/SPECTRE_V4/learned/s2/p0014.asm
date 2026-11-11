.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
sub eax, esi
test dil, bl
xor cx, -80
test al, 18
adc cl, bl
sub sil, dil
sbb al, sil
or rcx, 7
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], bl
adc al, dil
btc eax, 62
sbb dl, 53
and rbx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rbx]
and cx, -117
and cl, -101
sub cl, -51
xor ax, si
adc dil, 124
add dl, sil
add dl, -82
dec dl
sub dl, 107
test dil, -83
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], cl
xor bl, dil
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
sub di, 9
sbb dl, cl
adc dl, dil
and rdi, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

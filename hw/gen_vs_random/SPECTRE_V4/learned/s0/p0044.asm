.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 75
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
sub cl, 78
test al, dl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 5
xor dx, cx
and al, -28
add al, dil
sbb dl, bl
sub sil, cl
mov dl, dil
or bl, al
sbb al, -4
or al, -50
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
or edi, -64
sbb al, 102
xor bl, al
sub al, 127
btc rdx, rax
or sil, dl
xor di, 76
sbb eax, 1002977021
and sil, -84
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], sil
add dil, -61
sbb al, dil
sub sil, -35
cmp al, -116
test esi, -2111618709
xchg eax, ebx
adc cl, dl
cmp al, 75
test ax, -23852
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
xor al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

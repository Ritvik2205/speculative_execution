.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -59
or al, bl
sub bl, dl
or dil, cl
and cl, sil
dec bl
dec cl
adc al, cl
cmp al, 115
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rdx
sub cl, 18
and rbx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rbx]
xor cl, cl
and ax, 16313
or rax, -387680856
sbb al, 54
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], al
sub al, 26
test dil, dl
or eax, 185586366
xor rcx, rdx
adc bl, 0
sub dil, -11
and rcx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rcx]
cmp al, 75
adc dil, cl
xor sil, cl
or al, dil
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
add bl, dl
sub dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

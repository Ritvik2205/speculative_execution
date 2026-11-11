.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, sil
test edi, 2142010790
xor dl, bl
or ax, 57
adc al, dil
sub sil, 71
sub cl, bl
cmp bl, 12
dec bl
or ax, -29521
cmovno ebx, eax
and rcx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rcx]
add eax, 84
adc al, sil
not cl
or al, al
and al, -87
and rdx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdx]
sub bl, cl
add bl, -38
add sil, sil
xor dil, al
and rbx, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rbx]
cmp bx, 113
dec dl
and dil, -120
or dx, 24
sbb bl, -98
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
sub al, 63
cmp dl, -82
cmp al, dil
and ax, -6897
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

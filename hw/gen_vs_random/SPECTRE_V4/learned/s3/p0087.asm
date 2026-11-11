.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, dl
cmp eax, 64
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 84
movsx di, dl
cmovbe si, dx
adc al, cl
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
sbb eax, 1002977021
xchg sil, dil
test sil, dl
add al, -127
adc dl, cl
add al, -99
or al, 1
mov dil, cl
sub al, dil
mov cl, 14
sbb edi, -94
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
sbb dl, al
inc al
cmp ax, -22704
xchg rbx, rdx
sbb al, -43
dec al
sub cl, bl
adc bl, dl
sub dil, al
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
cmp al, -78
adc cl, dil
sbb bx, 94
and al, 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

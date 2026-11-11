.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc edi
and rsi, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rsi]
add bl, -38
adc dil, 124
cmp dil, cl
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
or cl, 12
sub dl, 107
and rax, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
or al, -88
cmp sil, bl
sub bl, al
or cl, cl
and ax, 16313
and dl, 124
add al, -32
add dl, cl
adc dl, bl
neg dl
and di, -34
add al, al
and sil, -84
sbb sil, bl
sbb bl, 121
and rdi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rdi]
adc eax, -983562873
or cl, bl
xor bx, 59
sbb cl, 12
and al, -124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

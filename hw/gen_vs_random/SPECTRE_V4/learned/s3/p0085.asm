.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, -119
sub al, -128
or rax, -897763206
xor cl, dil
or ax, 28571
sbb bl, -75
adc dl, al
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
sbb dil, cl
or cl, 12
xor ax, 20236
cmovz eax, ebx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
or bl, -99
and dl, sil
and al, 82
xor al, cl
xor dil, al
mov cl, dl
xchg bl, dl
or cl, al
cmp cl, al
sub cl, 92
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rax
cmp rax, -1247892360
cmp edi, 3
adc cl, bl
imul dx, cx
add dil, 105
or bl, 80
sub al, cl
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 20
adc al, sil
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 6
or dl, bl
dec sil
and dil, -61
and rdi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdi]
sbb dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, dil
and al, -12
and di, -34
dec dl
adc sil, al
or sil, -47
and bl, cl
and rax, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rax]
xor ax, -6064
sbb dl, -62
cmp rcx, -121
or cl, -104
sub dl, al
and rcx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rcx]
and bl, -60
add cl, dil
adc al, dl
and rcx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rcx], 40
adc dl, bl
sbb al, 31
sbb dl, cl
cmp al, -1
adc edx, -86
dec dil
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rbx, 49
sub cl, 18
cmp sil, dil
add ax, -18924
sub dl, 107
test sil, 68
adc bl, 127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

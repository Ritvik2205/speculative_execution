.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
xor bl, 126
xor bl, -126
not cl
and rcx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rcx]
sbb al, 70
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 5
xor ax, 20236
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
or dl, bl
and dl, 24
cmp al, 115
or sil, -47
adc al, dl
xor ax, 20236
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
cmp rdi, 28
and sil, al
and al, -118
sbb al, 102
or dl, 71
sub cl, al
adc dl, al
sub dl, bl
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
xor eax, 1185843233
or sil, -47
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
or eax, 143573881
add al, -6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

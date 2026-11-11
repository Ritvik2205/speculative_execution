.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rcx]
add cl, dl
and al, 41
xor ax, 13329
cmovz eax, ecx
cmp dil, cl
or rdx, 1
test al, -24
and cl, 32
xor dl, al
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
cmp cl, al
or dl, dl
mov cl, dl
adc dl, 39
and al, 49
adc bl, 0
sub cx, -114
cmp dl, dil
cmp dl, sil
add bl, al
or rdx, rbx
sub dx, -12
add bl, dil
add al, dl
add al, -3
and rbx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rbx]
neg cl
test bx, 24072
add al, cl
sub bl, dil
or al, dl
adc al, cl
cmp al, 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test di, ax
xor dl, dl
sub al, 96
or bl, cl
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rcx]
cmp al, -106
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -51
test dil, -83
adc dl, 22
mov dl, dil
sub dl, 107
sbb sil, dl
mov dl, cl
or bl, dl
add al, 40
sbb dil, 59
cmp al, 109
mov bl, sil
xor cl, al
sub al, cl
add dl, bl
and al, 49
and rbx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

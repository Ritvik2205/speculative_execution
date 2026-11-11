.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, sil
and eax, -784085938
sbb al, dl
test edi, -2098143765
and al, 5
sub dil, 65
or bl, dil
add dil, bl
sub al, sil
or al, sil
cmp bl, dil
sub dl, dil
and rcx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rcx]
and dil, 8
cmp al, -122
cmp rdx, -49
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], eax
test al, 72
adc sil, -63
test al, -26
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

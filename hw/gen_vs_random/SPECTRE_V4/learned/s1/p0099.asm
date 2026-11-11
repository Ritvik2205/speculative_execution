.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec bx
test al, sil
cmp dil, bl
and rsi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rsi]
sbb al, 102
cmovbe di, bx
cmp al, 116
adc dl, 39
xor al, 55
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
or dl, dl
adc al, sil
sub rbx, 101
xor al, -40
xor al, dl
mov dl, al
sbb bl, dl
and ax, -6897
test dil, bl
cmp al, -122
xchg di, cx
sub bl, al
adc bl, dl
sub al, 29
and rdx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdx], 100
add al, -82
sub bl, 56
movsx di, cl
test edx, -38580719
and al, 59
sbb al, -43
test ebx, 41
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
add cl, dl
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

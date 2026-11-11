.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dil
test dil, dl
movsx eax, dl
sub dl, -16
mov dl, sil
add bl, 54
sub bl, dl
mov al, dl
add sil, 3
and rdi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdi]
and al, bl
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
cmp al, dl
cmp al, -53
sbb al, -14
test al, 52
sbb al, -39
adc bl, -20
sub cx, -114
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
sub dil, 35
sub al, 63
bswap eax
mov cl, sil
add cl, -9
sbb bl, -98
and al, -28
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], ecx
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
and cl, dil
add bl, dl
adc sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
sub sil, sil
add al, -71 # instrumentation
cmovb rdi, rcx
xor cl, al
cmp cl, 59
add ebx, eax
cmovb eax, ecx
xor dx, cx
and rdi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdi]
bswap rsi
movsx ebx, ax
and sil, -84
mov rax, rcx
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], ax
movsx rcx, di
add esi, 59
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
test ecx, edx
movzx cx, cl
or di, 122
and edx, 39
mov eax, edx
or rbx, -108
movsx cx, dl
bt rdi, rdi
imul dl
sub dl, dl
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rcx], 23
and rcx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], cx
or cl, cl
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -74
cmovbe rbx, rdi
and rsi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rsi]
btr cx, 252
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and cl, 126
not al
and rbx, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rbx]
add dl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rdx]
and cl, -128
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

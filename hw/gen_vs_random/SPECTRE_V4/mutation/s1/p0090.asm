.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], -117
sbb cl, 12
sbb al, 70
or al, al
movzx di, cl
sub dx, dx
mov dl, 81
cmovnl bx, cx
and rcx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rcx]
bts eax, eax
or sil, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv sil
add al, -67 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], dl
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdi], 17
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rax]
cmovnl si, cx
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], sil
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 50
add eax, -105
or al, -88
or bl, -80
and rbx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], -31
mov bl, al
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
movsx cx, dil
mov rdi, rdi
and rcx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rcx], -32
add al, -60 # instrumentation
cmovle rsi, rdx
mov sil, sil
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], -25
and rcx, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rcx]
test cl, 78
xor dl, al
inc sil
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
add rax, 114
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 7
cmp rbx, -91
and rax, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], cl
adc dil, -48
and rdi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

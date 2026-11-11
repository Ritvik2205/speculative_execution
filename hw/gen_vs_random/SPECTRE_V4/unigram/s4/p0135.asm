.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc al, -59
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rax
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 0
sub bx, 24
and rdi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], esi
cmovle si, si
add rbx, 96
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], ax
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], cx
and rcx, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 101
add bl, dl
sub sil, al
or cl, bl
cmovo eax, ebx
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], cx
movzx rsi, ax
cmovnb di, cx
and rbx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rbx]
and cx, di
and dx, -107
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edx
add rdx, 91
sub rdx, 62
inc eax
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], 19
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 69
and rdx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], ecx
movzx ecx, sil
mov rdx, rcx
bt rcx, rbx
add cl, 9 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rcx]
sub dil, -11
cmovns rsi, rbx
and rax, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rax]
or cl, cl
cmovns rdx, rax
add al, 74 # instrumentation
cmovle eax, edx
bts esi, esi
sub edx, -122
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], edi
xor dl, dl
test dl, -125
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

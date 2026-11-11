.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not si
sub sil, sil
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], ax
cmp bx, di
and rdi, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
and rdi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdi]
bts ebx, 22
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
sub al, 99
btc rsi, rbx
add bl, -26 # instrumentation
btr ebx, 14
sub dl, dl
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 88
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edx
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], 77
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
sbb ax, -19255
movzx ax, al
sub dl, bl
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], 74
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], si
and dl, al
and rdi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdi]
sbb edx, 72
xor al, 56
add dl, -114 # instrumentation
cmovl cx, dx
xchg rax, rsi
sbb ecx, 6
and rbx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rbx]
add rdx, rdi
and rdi, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rsi]
btr bx, ax
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rdi
xchg edx, ecx
and rdi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 54
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
cmp dx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

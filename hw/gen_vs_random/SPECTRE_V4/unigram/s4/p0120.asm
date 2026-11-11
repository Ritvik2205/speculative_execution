.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp cl, dl
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rcx]
test bl, 24
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
add dl, 31 # instrumentation
cmovnl dx, dx
movzx edx, dx
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rax], rcx
sub rsi, rdi
and rdx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdx]
cmovnle bx, bx
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and dl, al
and rdx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], bx
sub bl, sil
and rsi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
and rdx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rdx]
cmovs ebx, ecx
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 95
bt ecx, 89
cmovz esi, ebx
add bx, 110
and rsi, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rsi]
cmovns dx, ax
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 79
add bl, -109 # instrumentation
sbb edx, 60
and rdx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
not bx
xor bl, 93
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
cmovle bx, bx
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rbx
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
sbb ebx, 3
and dil, 96
cmovle bx, bx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dil
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 2
sbb bl, bl
bts edx, edx
add esi, -5
add cl, 48
not si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

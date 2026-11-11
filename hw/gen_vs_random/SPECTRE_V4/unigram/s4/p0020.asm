.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub bl, -89
xor cx, -80
and rdi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], esi
and cl, cl
and rbx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rbx]
sub cl, al
inc cl
cmovnz rax, rdx
or cl, -104
add al, 89 # instrumentation
cmovnle di, ax
bts ecx, eax
cmovnb esi, ebx
or esi, 32
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], -56
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
test bl, -16
dec di
mov dx, 24004
and rcx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rcx]
neg ax
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rcx
and rdx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
sub dil, -28
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
movsx ebx, dil
adc sil, 111
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
test esi, ecx
test dx, dx
cmovnl dx, cx
and rcx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], 99
btc ebx, 71
xchg edx, edi
and rdx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rdx]
bt dx, 81
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 1
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 11
xor rsi, -3
add al, -1
movzx ax, cl
or cl, al
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], 94
movzx rsi, dx
bswap eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

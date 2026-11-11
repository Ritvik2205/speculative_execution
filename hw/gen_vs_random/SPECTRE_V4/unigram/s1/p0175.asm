.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rax]
cmovnl rdx, rax
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
test al, dl
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], sil
sbb dl, -99
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], ax
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 88
movzx ecx, cl
movzx dx, bl
mov cl, cl
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], bl
add eax, -1796699558
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
cmp dl, 31
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], dx
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 13
adc bx, -89
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
sbb sil, 108
add al, 122 # instrumentation
cmovns ebx, eax
sbb bl, -94
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 23
sbb ebx, 1
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 81
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
add cl, 97 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 9
or si, di
cmovnb dx, dx
adc dl, al
mov cl, cl
add al, 118
sbb dx, 24
add si, 4
cmovnbe bx, dx
cmovl rbx, rax
add bl, -115 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 31
bts rdx, rdx
sub dl, 43
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
dec al
btc rbx, 55
cmovo ax, dx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 66
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
and rax, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rax]
test al, 80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

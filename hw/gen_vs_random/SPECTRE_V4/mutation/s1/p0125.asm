.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov bl, dl
cmovl esi, ecx
cmovs rax, rdx
xor ax, si
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rax
test esi, -222751961
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
sub di, bx
xchg rbx, rax
or rdx, rbx
xor dl, dl
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
or cl, al
xchg cl, cl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rcx]
xor dl, cl
imul dl
imul rdx, rdi
add cl, -33 # instrumentation
not dl
and rdi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rdi]
cmovnz rbx, rsi
cmp dl, cl
cmp dl, 95
cmovp rbx, rcx
btc rcx, rdx
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 1
add cl, 71 # instrumentation
cmovnle rax, rcx
inc bx
or rax, rdx
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], -73
inc al
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], al
adc bl, dl
sub rax, -1680844889
add bl, cl
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
cmovbe ebx, esi
add cl, -9
and dil, -23
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
not rdx
cmovnz rdi, rdi
mov edx, eax
cmp bl, cl
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], edx
add al, 40
and rdi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

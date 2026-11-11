.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 45
or dx, 0b1000000000000000 # instrumentation
bsf si, dx
bt dx, cx
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
movzx rax, sil
adc al, -58
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 17
adc ax, bx
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdx]
sbb rax, 183833426
xor bx, cx
test al, dil
add dl, 31 # instrumentation
cmovnl si, si
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 90
and dl, al
adc bl, 89
sub al, 99
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
add al, 5
xor al, 29
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
btc ax, cx
adc bl, dl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
test dx, 1
sbb bl, 57
mul cl
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
xor sil, al
and rdx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdx]
cmovnbe rbx, rdx
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and sil, dil
add bl, -72
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
xor esi, eax
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], ax
cmp rcx, 76
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
sub dl, bl
inc edx
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
cmp bl, al
and rcx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

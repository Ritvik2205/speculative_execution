.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov rbx, 9101099553822202722
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -83
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], rcx
imul bx, si
cmovb edi, edx
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdi
sub bl, bl
add dx, -90
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rsi]
add dl, 72 # instrumentation
cmovle dx, cx
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add bl, -10 # instrumentation
mov bx, 71
and rbx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], si
imul dx
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], dx
cmovo ebx, edx
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
add ax, ax
xor cx, 46
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
test cl, bl
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 31
test rbx, 99
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 79
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
cmp dil, -124
xor eax, 181978569
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
add dl, 48 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], sil
add dl, 100 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rdx
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], esi
add al, 122 # instrumentation
cmovns esi, edi
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], ecx
cmovs ebx, eax
add dl, -39 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rcx]
btc rdi, rbx
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
add bl, bl
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 61
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

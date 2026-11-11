.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -17 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 41
mov dx, di
cmovz esi, eax
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
or cx, 0b1000000000000000 # instrumentation
bsf dx, cx
add bl, -39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdi]
cmovle rdx, rax
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rdx
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
add al, bl
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
sbb cl, 35
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], -21
neg bl
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], ecx
and dl, al
btr rdx, rbx
and rbx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -12
xor dl, bl
and rax, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rax]
test esi, -222751961
bt cx, dx
add dl, 122 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rbx]
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
sub rax, 1914398062
add bl, cl
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
cmovbe ebx, esi
add cl, -9
and dil, -61
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
not rdx
cmovnz rdi, rdi
mov edx, eax
cmp bl, cl
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], edx
add al, -4
and rdi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

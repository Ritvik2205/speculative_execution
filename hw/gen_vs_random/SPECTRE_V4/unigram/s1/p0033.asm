.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], si
and rax, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rax]
xor rdx, rcx
cmovnp ebx, edx
add al, al
inc rcx
and rbx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rbx]
or ecx, 102
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdx], -115
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
mov al, al
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
cmp esi, 123
cmovnp bx, ax
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 29
xchg rax, rcx
cmovnle ecx, ebx
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rax
bt ax, 248
and dl, -11
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], edx
sub eax, -494922880
bt rsi, rbx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rcx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rcx], ecx
and rsi, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rsi]
add cl, 28 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], cx
bt rax, 59
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 39
add al, 17 # instrumentation
cmovnle edi, edx
adc edi, -83
cmovnbe rcx, rdi
sbb bl, cl
xor dx, ax
dec dl
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
xchg rdx, rbx
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], 99
sbb bl, cl
and rdx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdx]
test al, bl
and rcx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

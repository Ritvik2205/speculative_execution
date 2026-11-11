.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rax, -1395313845
xor cl, 13
add cl, -58 # instrumentation
cmovnz edi, ecx
cmp sil, al
cmp al, dl
and si, -74
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -16
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
xchg rdi, rbx
xchg al, al
xor bx, ax
and rcx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rcx]
adc rcx, rax
and rax, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], -117
and dl, dil
inc edi
adc ecx, 55
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], di
add ax, 6694
cmp sil, 113
add cx, 71
and rax, 0b1111111111111 # instrumentation
adc rcx, qword ptr [r14 + rax]
bt rdx, 75
adc rsi, 82
xor rdi, -72
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], rax
and rbx, rax
test dl, 114
add dl, -4 # instrumentation
cmovp cx, bx
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdx], rcx
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 22
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 26
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
bswap eax
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
mov bl, al
and ebx, eax
and rdx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rdx]
and dil, dl
add bl, 76 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 7
xor cx, -80
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

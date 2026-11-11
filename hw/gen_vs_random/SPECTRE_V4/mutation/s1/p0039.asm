.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc eax, -1127383570
or sil, -47
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], di
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 6
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], -17
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
add bl, 127 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 1
and rcx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], al
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
add dl, 47 # instrumentation
cmovnle bx, dx
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
cmp cl, bl
add al, -10 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], cx
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
mul cx
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 3
mul dl
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdx]
add cl, 16 # instrumentation
cmovnz ax, cx
btr rax, 187
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
imul dl
bswap edi
cmovle rdx, rcx
add al, -7 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
cmovp rsi, rdi
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 0
and rdx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdx]
cmovbe ecx, eax
add dil, -61
add bl, dl
adc dil, 112
and rdx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
or al, 27
or dl, dl
neg al
btr rax, rbx
sbb cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

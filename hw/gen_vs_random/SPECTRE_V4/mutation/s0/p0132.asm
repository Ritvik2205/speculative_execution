.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -10 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], cx
or al, 27
btr rax, 187
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
add bl, dl
or sil, -47
cmovbe ecx, eax
add dl, 47 # instrumentation
cmovnle bx, dx
sbb cl, cl
btr rax, rbx
neg al
or dl, dl
mul dl
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], -17
cmp cl, bl
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
cmovle rdx, rcx
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], di
and rdx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdx]
mul cx
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 7
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 3
and rdx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rdx]
cmovp rsi, rdi
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
add bl, 127 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rcx]
add dil, -61
bswap edi
and rdx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], al
and rcx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rcx]
add al, -7 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
adc eax, 1378432629
add cl, 16 # instrumentation
cmovnz ax, cx
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 6
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 0
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
adc dil, -17
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
imul dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

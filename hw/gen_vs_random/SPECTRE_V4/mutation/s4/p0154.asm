.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul cx
btr rax, rbx
cmovbe ecx, eax
mul dl
add bl, 127 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdx]
or dl, dl
adc eax, 1307735127
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], di
and rdx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdx]
cmovle rdx, rcx
btr rax, 187
and rdx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rdx]
add dl, 47 # instrumentation
cmovnle bx, dx
add dil, 75
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 3
or sil, -47
imul dl
and rcx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rcx]
cmp cl, bl
or al, -19
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], -17
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 3
adc dil, -15
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
neg al
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
sbb cl, cl
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
add cl, 16 # instrumentation
cmovnz ax, cx
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], al
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 0
add bl, dl
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 2
bswap edi
add al, -10 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], cx
add al, -7 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
cmovp rsi, rdi
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

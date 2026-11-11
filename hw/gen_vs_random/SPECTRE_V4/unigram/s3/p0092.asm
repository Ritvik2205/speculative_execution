.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb cl, sil
cmp eax, -1538116527
mov dil, bl
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 83
and rcx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rcx]
cmovl ecx, ebx
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
cmovnz di, bx
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], -117
or dx, 37
test cx, 19367
imul dl
and rbx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rbx
xor bl, sil
test di, si
and rsi, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rcx], si
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 82
and rcx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdi]
cmovl eax, ebx
cmp al, dil
or rdx, rdx
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], esi
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
xor al, 30
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
test ecx, -907816607
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], esi
or edx, 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
not si
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], ebx
xor edx, edx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
bswap rax
cmp rdx, -49
cmovnbe edi, eax
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], 18
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 0
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
bt cx, dx
and rax, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 36
add bx, 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

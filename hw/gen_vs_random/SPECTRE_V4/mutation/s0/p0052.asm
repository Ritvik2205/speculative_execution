.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, ax
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], -121
cmovs esi, ecx
and rbx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdi]
and ax, -14374
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rax]
add bl, 76 # instrumentation
sbb edx, ebx
or eax, -1341747033
and rsi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rsi], 62
and ax, 26513
or rsi, 73
sbb dx, 2
cmovz rax, rbx
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdi
imul dx, cx
add bl, -74 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdi]
or rax, 980130592
cmovp rdi, rbx
and rdi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
movzx edx, al
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rbx]
bts esi, 18
btr rdx, rax
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
mov al, 125
and rsi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rbx]
cmovs edi, edx
adc dl, cl
adc bl, 35
and rdi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdi]
btc di, si
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rsi], rdx
and esi, edx
xchg dl, al
adc rax, 1682231791
cmovnbe rbx, rcx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdx
cmovs dx, si
and rbx, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rbx]
and rdx, 84
and rsi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rdi]
add bl, -43 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rcx]
imul esi, edx, 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

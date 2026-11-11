.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx dx, sil
movzx dx, bl
and rdx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
cmovp edi, edi
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 72
and rdx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], edx
add rsi, rax
and cl, 58
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 73
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], -69
and rsi, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
not bl
btc rax, rdx
and rax, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], dil
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
not cx
cmp dil, -124
and rbx, 110
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rdx
movzx cx, cl
add bx, 110
add rsi, 77
and rcx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 38
xor si, 33
and rsi, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rsi]
movzx rbx, cl
not di
mul cl
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], edi
bts ecx, 5
and rdx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rdx]
sbb al, -101
and rdx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdx]
movzx rbx, si
and dl, cl
sbb al, sil
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], 53
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
neg dl
neg rcx
bt bx, 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

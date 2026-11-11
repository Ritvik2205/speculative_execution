.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
bts esi, 241
cmovb bx, bx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rbx]
cmovnb bx, bx
and rax, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rax]
sub edx, ebx
imul ecx, eax
movzx esi, dil
and rax, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rax]
imul bl
movzx ax, dl
cmp al, 70
and rax, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], edx
add cl, -82 # instrumentation
sbb ax, bx
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 13
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
mul ax
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
bt ebx, 228
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rdx
bts edx, 31
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rax]
xor ecx, edi
cmp rcx, 75
mul ax
cmovnb cx, cx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rax
adc rsi, 60
and rdi, -2
and rbx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rbx]
bt ebx, esi
and rax, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rax]
sub rsi, 26
add bl, -109 # instrumentation
sbb edx, 16
imul eax
add cl, cl
sub bl, cl
imul rdi
and si, 68
or sil, bl
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

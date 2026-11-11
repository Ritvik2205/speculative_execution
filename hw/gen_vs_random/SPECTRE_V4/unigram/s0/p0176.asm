.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 122 # instrumentation
cmovz rbx, rax
cmovnbe rsi, rdx
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 1 # instrumentation
add dl, 97 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 7
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
bswap esi
sbb rdi, rcx
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
and rbx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rbx]
inc dil
add dl, 12 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rsi]
add dl, 110 # instrumentation
movsx si, dl
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rcx], 61
sbb al, dil
and rsi, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rsi]
cmovs edx, edi
movzx dx, dl
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add bl, -10 # instrumentation
mov bx, 85
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rbx
and rax, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rax]
sbb dl, -99
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], cx
adc dl, bl
cmovp esi, ebx
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78
mov di, 100
and rax, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], cx
add eax, edi
or eax, -1434249782
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
cmp bl, sil
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rbx]
adc sil, cl
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
cmovnp eax, edx
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
cmovp ebx, ebx
xor al, bl
xor eax, 181978569
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 23
sub rdx, 22
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], 28
movzx eax, bl
sbb bl, -94
mul cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

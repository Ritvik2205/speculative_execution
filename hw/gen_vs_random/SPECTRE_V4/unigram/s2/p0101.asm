.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
imul dl
and bl, -63
sbb al, dl
and rbx, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rax
test esi, eax
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
add si, 4
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dl
bts esi, 241
and esi, 55
and rdi, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rdi]
xor dil, 74
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 7
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], ebx
mul esi
xor sil, 56
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
btc rcx, rax
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
sbb di, si
movzx ecx, sil
adc di, -110
xor bx, 31
add cl, -117 # instrumentation
cmovs rcx, rdi
cmovb cx, cx
cmovnbe rcx, rax
and rsi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rcx]
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], al
or edi, 14
and rax, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 80
bts rbx, rdi
movzx di, bl
add dil, dil
add bl, -115 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 4
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rax], dx
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], eax
adc al, 36
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
add cl, bl
sbb cl, sil
and rdi, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

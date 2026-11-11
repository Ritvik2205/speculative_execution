.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 13
or di, 0b1000000000000000 # instrumentation
bsf si, di
and rsi, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rsi]
and rax, 58
test ax, 23760
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 24
bt ax, dx
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], cx
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], eax
and rbx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rdi]
cmovnp rbx, rdx
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], al
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], 88
bts esi, 241
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rax]
neg cx
cmovz rbx, rdi
cmp al, al
and al, -36
cmovz eax, eax
and rbx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
add ebx, 3
and rdi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdi]
cmovnp ecx, esi
cmovnbe di, ax
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rbx], edx
or edi, eax
mul cl
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
movzx cx, dil
setnle dl
test eax, 1561062795
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 3
add sil, -117 # instrumentation
and rdx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdx]
sbb al, 32
cmp al, -52
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 2
cmovno esi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

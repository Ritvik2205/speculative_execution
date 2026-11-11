.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx ax, al
add cl, 119 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rdx]
test eax, -558243208
and rbx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rbx]
sbb dl, -99
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 18
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], 11
and rsi, 90
movzx di, al
inc ecx
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 28
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
and rax, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
adc cl, bl
and rcx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rcx]
cmovnp esi, edi
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], dil
cmp di, 56
add al, al
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], 41
mul ax
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
test rcx, -2118888343
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
cmovz edi, edi
add edi, esi
sbb bl, 57
movzx ebx, dil
mov sil, sil
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rdx
sbb ebx, 49
xor rbx, rdi
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
sub rax, rdx
cmovp esi, esi
or di, ax
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 32
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
cmp bl, 13
and rbx, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
xor bx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

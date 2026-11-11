.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rsi]
not dx
and rcx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rcx]
or ax, bx
and rcx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rdx]
xor al, cl
xor eax, -437098167
and rdx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rdx]
cmovnp rbx, rdi
cmovnp di, dx
cmovnbe edx, eax
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 95
and rdx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rdx]
cmp rax, 1524061352
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
cmovnle eax, ebx
and rdi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
sub al, bl
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -14
adc ecx, -12
xor cl, -101
sbb ecx, 17
and rbx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], 79
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], esi
cmovnbe edx, ecx
cmp rdx, 7
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
cmp rsi, 60
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], 30
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edx
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 7
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
cmp dx, 65
and rdx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rsi]
sub dl, 43
and rbx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rbx]
sub dl, al
sbb al, al
cmovnb eax, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

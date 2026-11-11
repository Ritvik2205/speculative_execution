.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rbx]
cmovnb si, si
cmovnp ax, ax
and ax, 35
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
cmovnle rsi, rsi
mov rdi, 82
add sil, sil
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], cl
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rbx
cmp ax, 23131
add bx, 110
sbb cl, 19
xchg rax, rcx
cmovb si, si
test eax, 1561062795
and dil, 96
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
dec eax
cmovp eax, edi
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], sil
test esi, 62
imul si, di
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], esi
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rdx], di
test ax, 23760
cmovs rcx, rsi
not dl
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
and rbx, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], dl
and rdx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
and esi, 55
xchg rbx, rdx
and rax, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 90
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
and rcx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 32
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul si, dx, 54
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], cl
btc ax, bx
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], 30
and rax, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rax]
add dl, -10 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -83
sub dl, 43
sbb sil, al
sbb cl, 19
add dl, 12 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rax]
not bx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
and rcx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rcx]
test dil, 29
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
xor ecx, 61
and rax, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], 88
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rbx
movzx bx, bl
and rsi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rsi], 5
cmovo rax, rdx
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], bl
xchg rcx, rbx
and rdx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 97
cmp ax, -15409
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rcx]
cmovnbe rcx, rax
imul rdi
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rdx]
xchg rbx, rcx
sub esi, 8
xor rax, 52
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 88
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
adc ebx, 117
cmovnb ax, ax
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rax
cmovns ebx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

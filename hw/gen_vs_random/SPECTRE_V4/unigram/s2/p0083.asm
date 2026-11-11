.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], 99
btc rcx, rdx
and dil, al
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 73
and rbx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rbx]
adc dil, bl
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rax], edx
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], sil
sub rbx, 101
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], -77
cmovnp eax, eax
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], cx
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], 84
xor rdi, rax
xor eax, 550678097
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], al
bswap ebx
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], ax
and sil, -84
and rdi, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rdi]
btc rdx, rdx
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], rax
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], 94
sub edx, ebx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
adc al, sil
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
cmovb esi, eax
and rsi, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rsi]
test edx, -38580719
add sil, 122 # instrumentation
cmovz bx, si
cmovnle eax, edx
bt di, bx
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], 69
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rax
and rdx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdx]
cmp dil, bl
cmp edx, 4
or eax, -1779536330
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], 56
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rax
mov dil, 63
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rsi
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 51
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

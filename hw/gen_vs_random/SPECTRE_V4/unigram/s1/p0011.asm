.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], 31
imul dil
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], 36
cmovno rbx, rdx
mov sil, bl
and rdi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdi], 77
adc rsi, rax
cmovnb eax, edx
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], 55
or rcx, rcx
and rsi, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rsi]
add al, 20 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rdi], edi
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], -101
and rbx, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], edi
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
btc rcx, 19
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
or rsi, rdx
and rcx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], eax
movsx di, dl
btr ax, si
cmovnle si, bx
and cl, 126
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
xchg si, di
neg cx
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], 86
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], esi
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
mul ecx
and rsi, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rsi]
xor ebx, -62
add dl, 92 # instrumentation
cmovnl rsi, rbx
mul dl
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

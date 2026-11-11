.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -115 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 2
cmovz edx, ecx
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 119
bts esi, 241
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], ax
adc rsi, 28
dec rdi
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rax], eax
and rdx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], bl
cmp rdi, rsi
xor dil, 48
xor eax, -164167056
mul rbx
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
or bl, dil
xor rsi, -3
cmovz edx, edi
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
cmp ax, 23131
xor sil, bl
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rdx], edi
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ebx
add dl, 48 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], al
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 98
test ax, 23760
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rbx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rsi
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
or al, al
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

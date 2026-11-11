.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rbx, 155
bt esi, edi
xor dil, 8
test cl, 101
and rsi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 8
cmovb ecx, edi
and rax, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rax]
bt edi, esi
and rdx, rsi
jmp .bb_0.1
.bb_0.1:
or rdi, -11
or rdx, rax
or eax, -927349615
and dl, 59 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ecx
and rsi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], edx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 99
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdi]
or sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

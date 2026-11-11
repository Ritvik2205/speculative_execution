.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, -27
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rcx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
and rcx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 30
cmovz ecx, esi
and rsi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], edi
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dil
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
jmp .bb_0.1
.bb_0.1:
and dil, dil
and al, -81 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 92
cmovns rsi, rdx
bt eax, 37
cmovp edi, ebx
test esi, ebx
bt esi, 3
test rdx, 97
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

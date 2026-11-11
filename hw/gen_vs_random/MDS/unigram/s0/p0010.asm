.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -55 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdi]
and cl, 113 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr esi, eax
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 11
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 91
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 53
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 24
and dil, al
cmovl rcx, rdx
btr rsi, rsi
and sil, al
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 103
and rdx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rax]
and sil, 65
cmovz esi, edi
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

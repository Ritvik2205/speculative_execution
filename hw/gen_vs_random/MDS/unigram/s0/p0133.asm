.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
xor bl, 2
and rdi, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rax]
and cl, 89 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdi]
btc rdi, 6
cmovs eax, eax
test al, al
jmp .bb_0.1
.bb_0.1:
xor dil, 81
xor bl, 2
and bx, dx
bt rbx, 94
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rcx
cmovnb ax, si
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], ecx
and bl, 52 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

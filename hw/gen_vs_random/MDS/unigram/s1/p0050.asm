.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, al
xor al, -19
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
xor cl, 83
cmovo rsi, rdx
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
btc edi, esi
and rcx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rcx]
and cl, 51 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rcx]
btc rdi, 221
btc esi, edx
or dil, al
and cl, -15 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -109
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
or dil, al
btr rbx, rdx
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

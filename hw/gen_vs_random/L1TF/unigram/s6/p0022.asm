.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
movsx edx, cl
and rax, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rdx]
setns bl
xchg edi, ebx
cmp esi, eax
cmovno rdx, rbx
cmp cx, 58
and dl, 10
and rdx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rdx]
lea ax, qword ptr [rbx + rsi + 83]
and rbx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 19
test al, -70
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

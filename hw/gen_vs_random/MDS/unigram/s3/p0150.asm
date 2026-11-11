.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rax]
xor dil, al
and rsi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rsi]
and cl, 95 # instrumentation
cmovns rsi, rsi
cmovb rdx, rdi
and dx, 25
and si, 94
cmovz bx, cx
and dl, al
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
and cl, 85 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 5
and cx, 56
cmovno di, cx
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdx
test dil, -72
and rbx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

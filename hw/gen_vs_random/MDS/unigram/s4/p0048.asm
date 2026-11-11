.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
cmovle eax, esi
cmovnl eax, edi
and rcx, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and bl, -104 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
and edi, 92
and bl, -66 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
bts si, dx
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], esi
and rdx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rdx]
cmovz edx, ecx
xor dil, dil
and rdx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdx]
xor cx, si
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 52
and rsi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

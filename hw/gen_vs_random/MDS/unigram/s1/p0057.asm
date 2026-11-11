.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 2
cmovle eax, ebx
cmovz ax, bx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 2
and dl, -18 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rdi]
test eax, 758789512
xor cx, dx
cmovp eax, esi
bt edi, 254
and rdi, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 77
and rcx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ecx
cmovp ecx, ecx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
cmovl rax, rcx
and rdi, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

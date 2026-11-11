.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp esi, edi
and rsi, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 32
and rdx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 70
cmovns rsi, rax
bts ecx, 95
bts cx, si
and rdi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
cmovns edi, edi
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], 43
and rax, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rax]
and al, cl
and rdi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rdi]
cmovo si, ax
and cl, -109 # instrumentation
cmovns rax, rax
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ecx
and rax, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

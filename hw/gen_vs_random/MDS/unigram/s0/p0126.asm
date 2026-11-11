.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc si, 43
and rdx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and rsi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rsi]
btr cx, 9
bts eax, 222
xor cl, bl
and rdx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdx]
or dil, cl
jmp .bb_0.1
.bb_0.1:
and al, -68 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rbx]
cmovz ebx, edi
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 2
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 85
and rax, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
and rsi, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 7
cmovb rdi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], ax
cmovl esi, edi
and rcx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], ecx
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], bl
xor edi, 18
cmovo rdi, rdi
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rcx], bx
and rsi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rsi]
and cl, -103 # instrumentation
cmovbe cx, cx
xor dil, 8
and rax, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rax]
and cx, cx
not rdi
btc rdi, 221
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 64
and al, 16 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

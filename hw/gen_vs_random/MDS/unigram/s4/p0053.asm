.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 19
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 18
and ax, bx
cmovno bx, dx
cmovz di, dx
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 68
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 68
and rsi, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
and rcx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
xor dl, dl
and rax, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rdi
and rax, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rax]
or bl, dl
and rax, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rax]
test rdi, 38
or rsi, 62
and dil, -3 # instrumentation
cmovnb di, si
cmovle edx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

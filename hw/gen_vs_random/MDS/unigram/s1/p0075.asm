.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], cx
and cl, 79
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 82
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
cmovz rax, rbx
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 84
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], eax
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdi
btc rax, rsi
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 46
and rdi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rdi]
test ebx, -961564216
test ax, -20900
or rdx, rbx
and rcx, -63
and rax, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdx
btc rcx, 44
and rdi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

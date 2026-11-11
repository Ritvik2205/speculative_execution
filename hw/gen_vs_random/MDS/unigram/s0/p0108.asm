.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], ebx
bt ecx, 97
and rdi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdi]
xor rdi, -9
cmovz dx, dx
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], esi
btc rsi, 105
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 57
not cl
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rax
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 30
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
and bl, bl
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 69
and rax, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], esi
and rsi, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rsi]
not dx
bt esi, 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

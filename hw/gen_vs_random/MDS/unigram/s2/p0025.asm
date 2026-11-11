.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rdi, 36
cmovo di, ax
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 119
xor edi, edi
btc edi, 85
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], bx
xor ecx, 33
cmovz edi, edx
and dil, al
jmp .bb_0.1
.bb_0.1:
test dil, sil
or cl, 10
and rbx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rbx]
and di, 18
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 84
and rcx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rcx]
bt di, 11
cmovb rcx, rsi
and dl, -18 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rax]
and dl, -78 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

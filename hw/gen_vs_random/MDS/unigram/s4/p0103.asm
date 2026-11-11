.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rbx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
cmovbe eax, edx
and bl, 68
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -7
and dl, 1 # instrumentation
cmovl cx, si
and dl, -73
xor rcx, -2
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rsi]
or rsi, 37
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 17
or sil, -78
test ebx, -961564216
test rsi, 8
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rbx]
and bl, 1 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdi]
and dl, 37 # instrumentation
cmovnbe bx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

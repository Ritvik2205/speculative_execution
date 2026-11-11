.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, rax
and rdx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdi]
and rbx, rcx
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], -100
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 78
and rax, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
and rdi, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 90
cmovb di, cx
and rax, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rax]
bt edx, edi
jmp .bb_0.1
.bb_0.1:
test rbx, 43
and rax, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rax]
cmovz esi, ebx
and rdx, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rax
and rdi, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

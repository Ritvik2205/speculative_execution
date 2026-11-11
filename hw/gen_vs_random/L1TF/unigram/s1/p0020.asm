.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rsi]
movzx rax, cl
and rdi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi]
xchg rdx, rsi
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
sbb dil, 21
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
cmovnz ebx, esi
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], bl
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rsi
and cl, cl
and rsi, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

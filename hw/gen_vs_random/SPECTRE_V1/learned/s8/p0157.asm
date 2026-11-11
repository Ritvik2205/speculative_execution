.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 40 # instrumentation
btc rax, rax
lea eax, qword ptr [rbx]
adc cl, -19
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
test bl, -8
neg edx
lea ax, qword ptr [rdx]
xor cl, dil
add al, cl
xchg cl, al
and rax, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rax]
sbb al, 104
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
test al, bl
btc dx, si
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], 95
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

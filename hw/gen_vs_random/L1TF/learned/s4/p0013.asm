.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, cl
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rcx]
and bl, 89
btr bx, dx
test bl, cl
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
sub cl, dil
test edi, 78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

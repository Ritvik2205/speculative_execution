.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rdx]
inc cl
and rcx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rcx], 100
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
test eax, 899472326
and rsi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rsi]
xor al, bl
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1315047763
add dl, bl
lea cx, qword ptr [rbx + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

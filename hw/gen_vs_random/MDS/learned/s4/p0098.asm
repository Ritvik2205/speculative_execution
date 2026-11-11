.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 53
and rax, 498847670
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 5
xor dil, -3
test esi, 425331143
test edx, -372470678
and rax, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rax]
test al, sil
xor bl, sil
test esi, 1857129931
xor rcx, 71
xor bl, 67
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

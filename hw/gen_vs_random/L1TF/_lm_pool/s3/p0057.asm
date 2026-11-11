.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -122 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rbx]
sbb dil, 73
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
add rbx, 99
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
xor edx, 33
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rax], 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

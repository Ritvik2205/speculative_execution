.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg ecx, edx
and rdx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea di, qword ptr [rdi]
add al, bl
cmovno di, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

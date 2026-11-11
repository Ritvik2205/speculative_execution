.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rdx]
lea eax, qword ptr [rdi]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 37
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 76
add al, -102
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

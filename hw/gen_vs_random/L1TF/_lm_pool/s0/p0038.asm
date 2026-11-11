.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ecx
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
test si, 39
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], 1
and rbx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rbx]
add cl, 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

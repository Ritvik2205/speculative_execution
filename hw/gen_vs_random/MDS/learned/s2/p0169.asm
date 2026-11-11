.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 91
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
jmp .bb_0.3
.bb_0.3:
and dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

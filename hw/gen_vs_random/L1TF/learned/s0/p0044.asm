.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg ebx, ecx
and rdx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
movzx esi, bl
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

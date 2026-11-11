.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cx, 113
xor cl, sil
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdx
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 65
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], bx
add sil, cl
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rax]
adc sil, 63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

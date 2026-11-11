.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, 127
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rdx]
and sil, dl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

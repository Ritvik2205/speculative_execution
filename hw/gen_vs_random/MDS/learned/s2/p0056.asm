.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, dx
test dl, al
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
and sil, -69
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
jmp .bb_0.4
.bb_0.4:
jmp .bb_0.5
.bb_0.5:
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
and ax, -4410
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

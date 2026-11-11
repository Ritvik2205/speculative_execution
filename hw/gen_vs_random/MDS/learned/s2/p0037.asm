.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dil
test dil, dl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
jmp .bb_0.1
.bb_0.1:
xor cl, dl
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
jmp .bb_0.3
.bb_0.3:
or cx, 39
jmp .bb_0.4
.bb_0.4:
xor bl, cl
xor al, 115
xor cl, dil
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

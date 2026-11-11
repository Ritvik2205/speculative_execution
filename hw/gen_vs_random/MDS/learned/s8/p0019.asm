.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, cl
jmp .bb_0.1
.bb_0.1:
test dl, 48
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
xor ax, -23364
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
or al, cl
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
or rax, -141551502
or al, -58
jmp .bb_0.2
.bb_0.2:
xor dil, 124
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8639
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

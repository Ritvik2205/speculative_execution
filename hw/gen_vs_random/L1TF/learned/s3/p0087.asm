.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov sil, al
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 32339
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 7
jmp .bb_0.2
.bb_0.2:
add cl, dil
jmp .bb_0.3
.bb_0.3:
lea si, qword ptr [rbx + rcx + 83]
and rcx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rcx]
jmp .bb_0.4
.bb_0.4:
inc cl
sbb cl, -11
and cl, 11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 104 # instrumentation
mov esi, 26
or dil, -113
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -12952
test dil, al
sbb dil, 2
add cl, dil
xor al, 16
and al, -68
not cl
sbb cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

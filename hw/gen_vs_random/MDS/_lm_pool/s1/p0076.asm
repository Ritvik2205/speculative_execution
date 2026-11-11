.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
test rsi, 47
test bl, al
xor sil, 94
and cx, -8
jmp .bb_0.1
.bb_0.1:
test al, dil
xor cl, dil
and al, cl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
and sil, -69
xor di, -83
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, -121
xor sil, bl
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
xor dl, bl
test al, 91
or al, -75
and rbx, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rbx]
test eax, 1287331633
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
test al, sil
test sil, cl
test cl, bl
jmp .bb_0.1
.bb_0.1:
xor al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, bl
and bl, dil
or rsi, 42
test bl, dil
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
and rax, 498847670
or dil, -78
xor al, dil
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
and rax, -2058103810
xor al, 34
xor cl, sil
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
xor cl, dl
and rsi, 92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

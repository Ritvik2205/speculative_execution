.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 40 # instrumentation
btc rdx, rdx
or al, -48
and rbx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dil
and edi, 15
test bl, 84
jmp .bb_0.1
.bb_0.1:
xor sil, dil
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
sub sil, -99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

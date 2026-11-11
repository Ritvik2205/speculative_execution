.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs dx, di
cmovb di, ax
add sil, -61
and cl, 14
or al, -48
not cl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], 17
add sil, -61
jmp .bb_0.2
.bb_0.2:
bswap rdi
sub sil, -99
xor bl, al
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
xor cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

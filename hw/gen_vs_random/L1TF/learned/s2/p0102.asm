.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 67 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdx]
sub bl, dl
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
sbb cl, sil
jmp .bb_0.1
.bb_0.1:
test dil, -126
bt cx, 74
and dl, 32
sbb eax, -403815802
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

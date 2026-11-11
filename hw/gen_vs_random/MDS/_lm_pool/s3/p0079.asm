.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rsi]
xor rsi, -117
test cl, dil
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
and sil, -9
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 84
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 30
and sil, -56
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
or sil, bl
test cl, 0
jmp .bb_0.2
.bb_0.2:
and cl, al
xor bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

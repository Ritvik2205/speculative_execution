.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -104 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
add sil, -61
and sil, 37
and cl, 14
jmp .bb_0.1
.bb_0.1:
add bl, -21 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
cmovnp dx, cx
jmp .bb_0.2
.bb_0.2:
cbw
xchg dl, al
jmp .bb_0.3
.bb_0.3:
test sil, 29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

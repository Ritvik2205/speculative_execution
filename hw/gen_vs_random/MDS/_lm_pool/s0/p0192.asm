.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, cl
and rbx, 65
and edx, -44
btr rcx, 90
or al, sil
jmp .bb_0.1
.bb_0.1:
test cl, -113
bt cx, dx
not sil
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
or rcx, -17
test eax, -571234566
xor rsi, -117
or sil, al
or bl, 100
xor dil, -3
bt cx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
